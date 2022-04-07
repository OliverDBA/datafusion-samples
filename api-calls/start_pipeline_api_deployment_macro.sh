#!/bin/bash
# This script starts the pipeline api_deployment_macros
# with the two parameters input path and dataset target
# The pipeline definition of DataFusionQuickstart_macros_error-cdap-data-pipeline.json
# matches this pipeline
. set_environment.sh
curl -X POST -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDF_API}/v3/namespaces/default/start" -d '[{"appId":"api_deployment_macro", "programType": "workflow", "programId":"DataPipelineWorkflow", "runtimeargs": 
{"dataset-target":"Macrodataset", "input.path":"gs://nyt-bestsellers/nyt2.json"}}]'
