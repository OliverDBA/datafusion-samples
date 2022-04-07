# Repository content
This repository contains some samples to start with Google Cloud Data Fusion.
The pipelines are tested with the release 6.6.0


For the deplopyment scripts, be sure to set up the environment:

Minimal set of variables:
```
   export PROJECT_ID=<your-project-id>
   export AUTH_TOKEN=$(gcloud auth print-access-token)
   export CDF_API=https://<instance-name>-<project-id>-dot-<region>.datafusion.googleusercontent.com/api
```

Replace the placeholders with your project specific settings
  
## Pipelines

* DataFusionQuickstart-cdap-data-pipeline.json
   Simple pipeline, also available in the Data  Fusion Hub

* DataFusionQuickstart_macros-cdap-data-pipeline.json
   Added Macros for the input Cloud Storage Bucket
   Allows to set the input path before running the pipeline
  
* DataFusionQuickstart_macros_error-cdap-data-pipeline.json
   Multiple macros and error handling, by writing a trigger file to Cloud Storage
 
* DataFusionQuickstart_multiple_targets_macros-cdap-data-pipeline.json 
   Pipeline with multiple targets, GCS and BigQuery

## API calls

* set_environment.sh
  Adjust to match your environment, is sourced in ever other shell script

* deploy_pipeline.sh
  Deploys a pipeline from a json file to Data Fusion. 
   * Needs the name of the pipeline as the first parameter
   * Full path to the json file as second parameter
   * uses the default namespace

* get_run_information_pipeline_last_run.sh
  Displays information regarding the last run
   * needs one parameter pipeline name

* start_pipeline_api_deployment_macro.sh
  Sample script to start a pipeline with parameters via the API
  * starts the pipeline api_deployment_macro
  * Parameters matching the pipeline defined in file
     DataFusionQuickstart_macros_error-cdap-data-pipeline.json
  
