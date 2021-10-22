module "sophos_utm_standalone_cf_stack" {
    source                  = "cloudposse/cloudformation-stack/aws"
    enabled                 = true
    environment             = "us-east-2"
    stage                   = "testing"
    namespace               = "sophos"
    name                    = "sophos-standalone-utm"
    template_url            = "https://s3.amazonaws.com/sophos-nsg-cf/utm/standalone.template"
    tags                    = {
        'Environment': 'Testing'
        'BusinessUnit': 'Sophos-CSP'
    }

    parameters              = {
        AMI = "autodetect"
        LicenseType = "Hourly"
        VpcId = "vpc-073941ab1e779f604"
        PrivateSubnetId = "subnet-032e1fc79a6932c56"
        PublicSubnetId = "subnet-0c02652ee28cc1dbc"
        PrivateNetworkCIDR = "0.0.0.0/0"
        PublicNetworkCIDR = "0.0.0.0/0"
        OptTrustedNetworkCIDR = "47.188.126.61/32"
        InstanceSize = "default"
        KeyName = "aws_vpc"
        OptExistingElasticIpId = ""
    }
}