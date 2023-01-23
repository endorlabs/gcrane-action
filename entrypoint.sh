#!/bin/bash
PROJECT=$1
REPOSITORY=$2
JSON_KEY=$3
echo "$JSON_KEY" > /tmp/key.json
# SERVICE_ACCOUNT=$(jq .client_email /tmp/key.json | tr -d '"')
# gcloud auth activate-service-account $SERVICE_ACCOUNT --key-file=/tmp/key.json --project=$PROJECT
# IMAGES=$(gcrane ls ${REPOSITORY} | tr '\n' ',')
# echo "${IMAGES%,}"
# # IMAGES=$(gcrane ls us-central1-docker.pkg.dev/endor-ci/private --json | jq .child[] | tr "\n" ",")
# # echo "matrix=$(jq -Rsc '{image : split("\n")[:-1]}' <<< $IMAGES)"
# # echo "matrix=$(jq -Rsc '{image : split("\n")[:-1]}' <<< $IMAGES)" >> $GITHUB_OUTPUT
# echo "matrix=${IMAGES%,}" >> $GITHUB_OUTPUT
echo '::set-output name=matrix::["us-central1-docker.pkg.dev/endor-ci/private/analyticapiserver","us-central1-docker.pkg.dev/endor-ci/private/apiserver","us-central1-docker.pkg.dev/endor-ci/private/auditlogapiserver","us-central1-docker.pkg.dev/endor-ci/private/docserver","us-central1-docker.pkg.dev/endor-ci/private/endorci_runner","us-central1-docker.pkg.dev/endor-ci/private/endorctl_base","us-central1-docker.pkg.dev/endor-ci/private/endorstats","us-central1-docker.pkg.dev/endor-ci/private/grpcgateway","us-central1-docker.pkg.dev/endor-ci/private/k8s-maintenance","us-central1-docker.pkg.dev/endor-ci/private/metadataapiserver","us-central1-docker.pkg.dev/endor-ci/private/metadataretriever","us-central1-docker.pkg.dev/endor-ci/private/migrationservice","us-central1-docker.pkg.dev/endor-ci/private/queryapiserver","us-central1-docker.pkg.dev/endor-ci/private/scheduler","us-central1-docker.pkg.dev/endor-ci/private/secretservice","us-central1-docker.pkg.dev/endor-ci/private/vulnerabilityapiserver","us-central1-docker.pkg.dev/endor-ci/private/vulnerabilityingestor","us-central1-docker.pkg.dev/endor-ci/private/webserver"]'