#!/bin/sh

set -e

# Validate AWS credentials exist

if [ -z "$AWS_ACCESS_KEY_ID" ]; then
  echo "Error: AWS_ACCESS_KEY_ID is not set"
  exit 1
fi

if [ -z "$AWS_SECRET_ACCESS_KEY" ]; then
  echo "Error: AWS_SECRET_ACCESS_KEY is not set"
  exit 1
fi

if [ -z "$AWS_REGION" ]; then
  echo "Error: AWS_REGION is not set"
  exit 1
fi

# Confirm configuration file exists

if [ ! -f /vue.config.js ]; then
    echo "Error: vue.config.js not found!"
    exit 1
fi

# Start deployment

yarn deploy