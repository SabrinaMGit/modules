#!/bin/bash
# This script is to create an AWS CodeDeploy deployment.

# UPDATE THE FOLLOWING VARIABLES ACCORDING TO YOUR ENV.
APPNAME="devlax-portfolio"
DCONFIG="CodeDeployDefault.AllAtOnce"
DGNAME="cd_dg1"
DESCRIPTION="Portfolio Deployment"
BUCKET="devlax-portfolio.com"
ETAG="a1e11e9b0b41ec699033305d003496c8"
BUNDLETYPE="zip"
KEY="dist.zip"
REGION="eu-central-1"

aws deploy create-deployment \
    --application-name ${APPNAME} \
    --deployment-config-name ${DCONFIG} \
    --deployment-group-name ${DGNAME} \
    --description ${DESCRIPTION} \
    --s3-location bucket=${BUCKET},bundleType=${BUNDLETYPE},eTag=${ETAG},key=${KEY} \
    --region ${REGION}