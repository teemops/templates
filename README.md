# Teemops

Teemops is simplified AWS (Amazon Web Services) management.

Join Slack Channel: http://bit.ly/topslack

# Templates
This repo holds following:
* Default Teemops CloudFormation templates
* Launch scripts for predefined stacks (e.g. PHP, Node)
* misc. related code for above

```
#syncs to correct S3 bucket
sh sync.sh
```

```
#Launches a test cloudformation template in sydney region (teemops parent account)
sh launch.sh ec2-sydney
```

These are located in bucket:
https://templates.teemops.com.s3-us-west-2.amazonaws.com

IAM templates:
Root Account: https://templates.teemops.com.s3-us-west-2.amazonaws.com/iam.ec2.root.role.cfn.yaml
Child Account(s): https://templates.teemops.com.s3-us-west-2.amazonaws.com/iam.role.child.account.cfn.yaml

Cloudwatch event templates: (These are only created in each region the first time a launch config is added for a region)
https://templates.teemops.com.s3-us-west-2.amazonaws.com/cw.notify.child.account.cfn.yaml

# Launch scripts
These are used in the userdata initial build
example below:
```
bash <(curl -s https://raw.githubusercontent.com/teemops/templates/master/stacks/php.sh)
```

# Ansible playbook
This is used for providing base configuration for Ubuntu Teemops managed EC2 instances.
Teemops managed EC2 instances are ones that have preconfigured app environments (e.g. PHP, Node etc...)

## Base OS config
Purpose: Configures things like OS security, agents etc...
Location
base.yml

## Application specific playbooks or tasks
Purpose: Configure things like app environments

# Other repos
Teemops has a number of separate repositories that make up the entire application.
* API: https://github.com/teemops/core-api
* UI: https://github.com/teemops/teemops-ui
* Back End: https://github.com/teemops/teemops-serverless
* Services: Not released yet - manages updating of latest AMIs for EC2 actions.
* Database schema: located in this repo under schema/

# Docs
Work in progress sits on Google Drive: http://bit.ly/tops-gdrive

https://docs.teemops.com This is a Work in Progress and will be live Feb 2019

