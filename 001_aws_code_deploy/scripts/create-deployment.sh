#!/bin/bash
# This script is to create an AWS CodeDeploy deployment.

# UPDATE THE FOLLOWING VARIABLES ACCORDING TO YOUR ENV.
APPNAME="portfolio_app"
DCONFIG="CodeDeployDefault.AllAtOnce"
DGNAME="cd_dg1"
DESCRIPTION="Portfolio Deployment"
BUCKET="s3://devlax-portfolio.com"
ETAG="ETAG's NAME"
BUNDLETYPE="zip"
KEY="portfolio_app.zip"
REGION="eu-central-1"

aws deploy create-deployment \
    --application-name ${APPNAME} \
    --deployment-config-name ${DCONFIG} \
    --deployment-group-name ${DGNAME} \
    --description ${DESCRIPTION} \
    --s3-location bucket=${BUCKET},bundleType=${BUNDLETYPE},eTag=${ETAG},key=${KEY} \
    --region ${REGION}