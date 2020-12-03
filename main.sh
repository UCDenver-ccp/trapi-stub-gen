#!/bin/bash

### copy the TRAPI yaml file to the output directory
cp /work/ReasonerAPI.git/TranslatorReasonerAPI.yaml /app

### generate FastAPI stub files
fastapi-codegen --input /work/ReasonerAPI.git/TranslatorReasonerAPI.yaml --output /app