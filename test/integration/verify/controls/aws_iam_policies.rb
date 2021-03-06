title 'Test a collection of AWS Iam Policies'

aws_iam_policy_arn = attribute(:aws_iam_policy_arn, default: '', description: 'The AWS Iam Policy arn.')

control 'aws-iam-policies-1.0' do

  impact 1.0
  title 'Ensure AWS Iam Policies have the correct properties.'

  describe aws_iam_policies do
    it            { should exist }
    its ('arns')  { should include aws_iam_policy_arn }
  end
end