aws ecr create-repository \
    --repository-name hello-repository \
    --image-scanning-configuration scanOnPush=true \
    --region us-east-1

 aws ecr delete-repository --repository-name hello-repository


 aws --region us-east-1 ecr get-login-password \
    | docker login \
        --password-stdin \
        --username admin \
        "294899139296.dkr.ecr.us-east-1.amazonaws.com"