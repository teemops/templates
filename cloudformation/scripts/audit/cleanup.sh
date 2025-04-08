#!/bin/bash
#stop aws config and remove config
aws configservice  delete-delivery-channel --delivery-channel-name default --region us-west-2
aws configservice  delete-configuration-recorder --configuration-recorder-name default --region us-west-2