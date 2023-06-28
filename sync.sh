#!/bin/bash
aws s3 sync ./cloudformation s3://templates.teemops.com --acl public-read --exclude "*.git/*" --exclude "README.md" --exclude "sync.sh"
aws s3 sync ./scripts s3://templates.teemops.com --acl public-read
aws s3 sync ./cloudformation s3://templates.nzs.cloud/ --acl public-read --exclude "*.git/*" --exclude "README.md" --exclude "sync.sh"
aws s3 sync ./cloudformation s3://templates.auditaws.cloud/ --acl public-read --exclude "*.git/*" --exclude "README.md" --exclude "sync.sh"

#all items forced to be public
