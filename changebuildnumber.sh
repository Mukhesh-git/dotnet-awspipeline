#!/bin/bash
sed "s/buildNumber/$1/g" deploy.yaml > deploy-new.yaml

