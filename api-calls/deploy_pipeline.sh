#!/bin/bash
# this script expects two parameters
# first parameter: Pipeline name after deployment
# second parameter: json file with pipeline definition
# This simple script uses the default namespace - please change if needed


# validate the number of parameters
if [[ $# -ne 2 ]]; then
    echo "Wrong number of parameters" >&2
    echo "2 parameters needed. First parameter pipeline name"
    echo "Second parameter json file with pipeline definition"
    exit 2
fi

. set_environment.sh
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDF_API}/v3/namespaces/default/apps/$1" -d "@/$2" -v
