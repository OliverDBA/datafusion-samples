#!/bin/bash
# get the information about the executions of the 
# pipeline passed as first parameter
. set_environment.sh

# validate the number of parameters
if [[ $# -ne 1 ]]; then
    echo "Wrong number of parameters" >&2
    echo "1 parameter needed. First parameter pipeline name"
    exit 2
fi
curl -X GET -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDF_API}/v3/namespaces/default/apps/${1}/workflows/DataPipelineWorkflow/runs?limit=1" | jq
