# Teemops

Teemops is simplified AWS (Amazon Web Services) management.

Join Slack Channel: http://bit.ly/topslack

# Templates

This repo holds following:

- Default Teemops CloudFormation templates
- Launch scripts for predefined stacks (e.g. PHP, Node)
- misc. related code for above

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

IAM Standard New Account Roles:
https://templates.teemops.com.s3-us-west-2.amazonaws.com/newaccount/newaccount.iam.roles.cfn.yaml

IAM Security Account Roles:
https://templates.teemops.com.s3-us-west-2.amazonaws.com/newaccount/security.iam.groups.cfn.yaml

Cloudwatch event templates: (These are only created in each region the first time a launch config is added for a region)
https://templates.teemops.com.s3-us-west-2.amazonaws.com/cw.notify.child.account.cfn.yaml

Cloud Config and Audit templates
https://templates.teemops.com.s3-us-west-2.amazonaws.com/cloudconfig.cfn.yaml
https://templates.teemops.com.s3-us-west-2.amazonaws.com/cloudtrail.cfn.yaml

https://console.aws.amazon.com/cloudformation/home?#/stacks/quickcreate?templateUrl=https://s3-us-west-2.amazonaws.com/templates.auditaws.cloud/cloudconfig.cfn.yaml&stackName=tops-audit-config

DLM Lifecycle Policy:
https://templates.teemops.com.s3-us-west-2.amazonaws.com/newaccount/dlm.lifecycle.policy.cfn.yaml

Continuous Auditing:
https://console.aws.amazon.com/cloudformation/home?#/stacks/quickcreate?templateUrl=https://s3-us-west-2.amazonaws.com/templates.auditaws.cloud/audit/tops.audit.setup.yaml&stackName=tops-audit-monitoring

#Cloudtrail
https://console.aws.amazon.com/cloudformation/home?#/stacks/quickcreate?templateUrl=https://s3-us-west-2.amazonaws.com/templates.auditaws.cloud/cloudtrail.cfn.yaml&stackName=tops-audit-cloudtrail

# Conformance Pack Samples

https://console.aws.amazon.com/cloudformation/home?#/stacks/quickcreate?templateUrl=https://s3-us-west-2.amazonaws.com/templates.auditaws.cloud/audit/_config/awslabs/aws-config-rules/aws-config-conformance-packs/Operational-Best-Practices-for-CIS.yaml&stackName=tops-audit-pack-cis

Devops:

https://console.aws.amazon.com/cloudformation/home?#/stacks/quickcreate?templateUrl=https://s3-us-west-2.amazonaws.com/templates.auditaws.cloud/audit/_config/awslabs/aws-config-rules/aws-config-conformance-packs/Operational-Best-Practices-for-DevOps.yaml&stackName=tops-audit-pack-devops

# Launch scripts

These are used in the userdata initial build
example below:

```
bash <(curl -s https://s3-us-west-2.amazonaws.com/templates.teemops.com/teemdeploy.sh)
```

or GH (not as reliable on EC2 instances)

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

- API: https://github.com/teemops/core-api
- UI: https://github.com/teemops/teemops-ui
- Back End: https://github.com/teemops/teemops-serverless
- Services: Not released yet - manages updating of latest AMIs for EC2 actions.
- Database schema: located in this repo under schema/

# Docs

Work in progress sits on Google Drive: http://bit.ly/tops-gdrive

https://docs.teemops.com This is a Work in Progress and will be live Feb 2019

# Teemops App Scripts

## Servers/EC2

Ec2
https://templates.teemops.com.s3-us-west-2.amazonaws.com/ec2.cfn.yaml
ASG
https://templates.teemops.com.s3-us-west-2.amazonaws.com/asg.cfn.yaml
ASG w/ALB
https://templates.teemops.com.s3-us-west-2.amazonaws.com/asg.alb.cfn.yaml
ECS Cluster w/ALB
https://templates.teemops.com.s3-us-west-2.amazonaws.com/ecs.cluster.cfn.yaml
ECS Containers With Listeners
https://templates.teemops.com.s3-us-west-2.amazonaws.com/ecs.alb.cfn.yaml

## ECS Containers

ECS
https://templates.teemops.com.s3-us-west-2.amazonaws.com/ecs.alb.cfn.yaml

## RDS Database

RDS
https://templates.teemops.com.s3-us-west-2.amazonaws.com/rds.cfn.yaml
