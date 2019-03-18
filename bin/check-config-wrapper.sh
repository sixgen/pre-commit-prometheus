#!/bin/sh

PROMETHEUS_DOCKER_TAG="${1}"
echo "PROMETHEUS_DOCKER_TAG: ${PROMETHEUS_DOCKER_TAG}"
shift
FILES="${*}"

docker run --entrypoint "/bin/promtool" --volume ${PWD}:/repo --workdir "/repo" prom/prometheus:${PROMETHEUS_DOCKER_TAG} check config ${FILES}