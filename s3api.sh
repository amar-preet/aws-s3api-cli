#! bin/bash

# Get Key and Last Modified Date in descending order
aws s3api list-objects --bucket ${BUCKET_NAME}  --prefix ${OBJECT_PREFIX} --query 'reverse(sort_by(Contents[],&LastModified)[*].[Key,LastModified])[0]' --output text

# Get Key and Last Modified Date in descending order in a table
aws s3api list-objects --bucket ${BUCKET_NAME}  --prefix ${OBJECT_PREFIX} --query 'reverse(sort_by(Contents[],&LastModified)[*].[Key,LastModified])[0]' --output table

# Get Key only in descending order
aws s3api list-objects --bucket ${BUCKET_NAME}  --prefix ${OBJECT_PREFIX} --query 'reverse(sort_by(Contents[],&LastModified)[*].[Key])[0]' --output text
