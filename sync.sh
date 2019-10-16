#!/bin/bash
aws s3 sync ./cloudformation s3://templates.teemops.com
aws s3 sync ./scripts s3://templates.teemops.com