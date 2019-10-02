#!/bin/bash
set -e
# Any subsequent(*) commands which fail will cause the shell script to exit immediately

COMMAND="$1"

## Clean and create a new DB instance
init_db() {
  echo "=============================="
  echo "Start the MySQL Database on port 3306"
  echo "=============================="
  docker stop dxp-72 || true
  docker rm dxp-72 || true
  docker run --name dxp-72 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=lportal --publish 3306:3306 -d mariadb:10.2 --character-set-server=utf8 --collation-server=utf8_general_ci --lower-case-table-names=0

  # Staging
  # docker stop dxp-72-stg || true
  # docker rm dxp-72-stg || true
  # docker run --name dxp-72-stg -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=lportal --publish 3307:3306 -d mariadb:10.2 --character-set-server=utf8 --collation-server=utf8_general_ci --lower-case-table-names=0
}

build_bundle() {
  echo "=============================="
  echo "Setup a new Liferay EE Bundle and apply the patch"
  echo "=============================="
  
  # Clean the bundle directory
  rm -rf bundles/*
  
  # Init the bundle from the base package
  blade gw initBundle
  
  # Install fix-pack
  cp ~/.liferay/fix-packs/liferay-fix-pack-dxp-1-7210.zip bundles/patching-tool/patches/
  sh bundles/patching-tool/patching-tool.sh install
  
  # Remove the static folders after patch installation
  rm -rf bundles/tomcat-9.0.17/work/*
  rm -rf bundles/osgi/state
}

#
# params:
#    $1 - local file
#    $2 - nexus location
#    $3 - path to save
check_resource_exists() {
    if [ -e "$1" ]
    then
        echo "$1 found."
    else
        echo "$1 not found, downloading from $2"
        wget $2 -P $3
    fi
}

## Create a new environment
init() {
  init_db
  build_bundle
}

## Build app projects
deploy() {
  build_modules
}

case "${COMMAND}" in
  init ) init
        exit 0
        ;;
  bundle ) build_bundle
        exit 0
        ;;
  *)
  echo $"Usage: $0 {init, bundle}"
  exit 1
esac
exit 0