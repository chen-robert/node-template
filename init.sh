#!/bin/bash

mkdir $DIR
cp Dockerfile .dockerignore index.js $DIR
cd $DIR && mkdir public views
