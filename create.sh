#!/bin/bash

mkdir $DIR
cp Dockerfile .gitignore .dockerignore index.js $DIR
cd $DIR && mkdir public views && git init
