#!/bin/bash

set -e

pio-start-all
cd /UREngine
pio build --verbose
pio deploy

