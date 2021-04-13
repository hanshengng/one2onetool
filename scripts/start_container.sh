#!/usr/bin/env bash

set -e

docker run -p 8080:3000 --env DATA_FILE="Questions-test.json" ffda960e823e
