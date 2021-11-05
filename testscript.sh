set -eu
set -o xtrace

BRANCH="$1"
DIRECTORY="$2"

#git -C barndoor_code checkout $BRANCH --force

#HASH=$(git -C barndoor_code show | head -1 | cut -d \  -f 2)
DEPLOYMENT_TARGETS_FILE="deploy_targets.${BRANCH}.toml"

# if no directory is specified, run deploy as normal
if [[ $DIRECTORY == "none" ]]; then
    echo no input
    # for DEPLOYMENT_DIR in $(find . -name ${DEPLOYMENT_TARGETS_FILE}  | xargs -n 1 dirname); do
    #     docker run \
    #         -v $(pwd)/${DEPLOYMENT_DIR}:/config \
    #         -v $(pwd)/barndoor_code:/barndoor.git \
    #         -e GIT_DISCOVERY_ACROSS_FILESYSTEM=1 \
    #         --rm \
    #         --workdir=/barndoor.git \
    #         --entrypoint=node \
    #         docker.dev.tucows.net:5001/tucowsinc/barndoor:${HASH} \
    #         /app/dist/src/deploy.js \
    #         -f /config/${DEPLOYMENT_TARGETS_FILE} \
    #         -a /app \
    #         -g /barndoor.git
    # done
# deploy only the target directory
else
echo input
echo "$DIRECTORY"
    # docker run \
    #     -v $(pwd)/${DIRECTORY}:/config \
    #     -v $(pwd)/barndoor_code:/barndoor.git \
    #     -e GIT_DISCOVERY_ACROSS_FILESYSTEM=1 \
    #     --rm \
    #     --workdir=/barndoor.git \
    #     --entrypoint=node \
    #     docker.dev.tucows.net:5001/tucowsinc/barndoor:${HASH} \
    #     /app/dist/src/deploy.js \
    #     -f /config/${DEPLOYMENT_TARGETS_FILE} \
    #     -a /app \
    #     -g /barndoor.git    
fi;
