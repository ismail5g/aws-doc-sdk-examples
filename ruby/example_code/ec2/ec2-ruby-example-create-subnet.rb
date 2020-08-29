# snippet-comment:[These are tags for the AWS doc team's sample catalog. Do not remove.]
# snippet-sourceauthor:[Doug-AWS]
# snippet-sourcedescription:[Creates a public subnet with tags and attaches it to a VPC.]
# snippet-keyword:[Amazon Elastic Compute Cloud]
# snippet-keyword:[create_subnet method]
# snippet-keyword:[Subnet.create_tags method]
# snippet-keyword:[Ruby]
# snippet-sourcesyntax:[ruby]
# snippet-service:[ec2]
# snippet-keyword:[Code Sample]
# snippet-sourcetype:[full-example]
# snippet-sourcedate:[2018-03-16]
# Copyright 2010-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# This file is licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License. A copy of the
# License is located at
#
# http://aws.amazon.com/apache2.0/
#
# This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS
# OF ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws-sdk-ec2'  # v2: require 'aws-sdk'

ec2 = Aws::EC2::Resource.new(region: 'us-west-2')

subnet = ec2.create_subnet({
  vpc_id: VPC_ID,
  cidr_block: '10.200.10.0/24',
  availability_zone: 'us-west-2a'
})

subnet.create_tags({ tags: [{ key: 'Name', value: 'MyGroovySubnet' }]})
puts subnet.id
