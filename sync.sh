#!/bin/bash
aws s3 sync ./cloudformation s3://templates.teemops.com --acl public-read
aws s3 sync ./scripts s3://templates.teemops.com --acl public-read

#all items forced to be public
