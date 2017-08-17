:: Create a Role for the lambda function 
aws iam create-role --profile lambdasharp --role-name LambdaSharpLogParserRole --assume-role-policy-document file://assets/lambda-role-policy.json --profile lambdasharp
aws iam attach-role-policy --profile lambdasharp --role-name LambdaSharpLogParserRole --policy-arn "arn:aws:iam::aws:policy/AWSLambdaFullAccess" --profile lambdasharp

:: Create log group and stream
aws logs create-log-group --log-group-name /lambda-sharp/log-parser/dev --profile lambdasharp
aws logs create-log-stream --log-group-name /lambda-sharp/log-parser/dev --log-stream-name test-log-stream --profile lambdasharp
aws s3api create-bucket --bucket %1-lambda-sharp-s3-logs --create-bucket-configuration LocationConstraint=us-west-2
