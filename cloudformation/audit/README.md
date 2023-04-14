# Teemops Audit

Teemops provides software to simplify cloud ops.

# Config Rules

This repo holds following.

These are located in bucket:
https://templates.teemops.com.s3-us-west-2.amazonaws.com

Cloud Config and Audit templates
https://templates.teemops.com.s3-us-west-2.amazonaws.com/cloudconfig.cfn.yaml
https://templates.teemops.com.s3-us-west-2.amazonaws.com/cloudtrail.cfn.yaml

Custom Conformance Packs.
Conformance Packs are provided by AWS as config rules. These can be run from S3 as a quick create stack.
https://templates.nzs.cloud.s3-us-west-2.amazonaws.com/audit/_config/aws-config-conformance-packs/Operational-Best-Practices-for-CIS-AWS-v1.4-Level1.yaml

Quick Create example for auditing CIS Level 1:
https://ap-southeast-2.console.aws.amazon.com/cloudformation/home?region=ap-southeast-2#/stacks/quickcreate?templateURL=https%3A%2F%2Fs3.ap-southeast-2.amazonaws.com%2Ftemplates.nzs.cloud%2Faudit%2F_config%2Fawslabs%2Faws-config-rules%2Faws-config-conformance-packs%2FOperational-Best-Practices-for-CIS-AWS-v1.4-Level1.yaml&stackName=conform-pack-cis-l1&param_IamPasswordPolicyParamMaxPasswordAge=90&param_S3AccountLevelPublicAccessBlocksPeriodicParamBlockPublicAcls=True&param_S3AccountLevelPublicAccessBlocksPeriodicParamRestrictPublicBuckets=True&param_S3BucketVersioningEnabledParamIsMfaDeleteEnabled=TRUE&param_IamPasswordPolicyParamPasswordReusePrevention=24&param_IamPolicyInUseParamPolicyARN=arn%3Aaws%3Aiam%3A%3Aaws%3Apolicy%2FAWSSupportAccess&param_S3AccountLevelPublicAccessBlocksPeriodicParamBlockPublicPolicy=True&param_RestrictedIncomingTrafficParamBlockedPort3=3389&param_IamPasswordPolicyParamRequireLowercaseCharacters=true&param_IamPasswordPolicyParamMinimumPasswordLength=14&param_IamUserUnusedCredentialsCheckParamMaxCredentialUsageAge=45&param_IamPasswordPolicyParamRequireNumbers=true&param_IamPasswordPolicyParamRequireSymbols=true&param_AccessKeysRotatedParamMaxAccessKeyAge=90&param_IamPasswordPolicyParamRequireUppercaseCharacters=true&param_S3AccountLevelPublicAccessBlocksPeriodicParamIgnorePublicAcls=True
