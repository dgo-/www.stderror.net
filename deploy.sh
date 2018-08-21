#!/bin/bash

#build
hugo --quiet

#deploy
s3cmd sync  public/ s3://www.stderror.net --exclude '.DS_Store' --delete-removed --no-preserve
