#!/bin/sh
set -e

echo "Creating Oracle Database Free container..."

ARG_APP_USER=""
ARG_APP_USER_PASSWORD=""
ARG_ORACLE_PASSWORD=""
ARG_VOLUME=""

if [ -n "${APP_USER}" ]; then
  ARG_APP_USER="-e APP_USER=${APP_USER}"
fi;

if [ -n "${APP_USER_PASSWORD}" ]; then
  ARG_APP_USER_PASSWORD="-e APP_USER_PASSWORD=${APP_USER_PASSWORD}"
fi;

if [ -n "${ORACLE_PASSWORD}" ]; then
  ARG_ORACLE_PASSWORD="-e ORACLE_PASSWORD=${ORACLE_PASSWORD}"
fi;

if [ -n "${NAMED_VOLUME}" ]; then
  ARG_NAMED_VOLUME="-v ${NAMED_VOLUME}:/opt/oracle/oradata"
fi;

docker run -d --name "${NAME}" -p "${PORT}":1521 "${APP_USER}" "${APP_USER_PASSWORD}" "${ORACLE_PASSWORD}" gvenzl/oracle-free:"${IMAGE}"
