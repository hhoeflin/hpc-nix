#! /usr/bin/env bash
export PROJECT_DIR=$(dirname "$(realpath -s "${BASH_SOURCE[0]}")")
export MINIO_ROOT_USER=admin
export MINIO_ROOT_PASSWORD=password
mkdir -p "$PROJECT_DIR"/minio
nix shell nixpkgs#minio --command minio server --console-address ":9001" ${PROJECT_DIR}/minio
