FROM amazon/aws-cli

ENV TERRAFORM_VERSION "0.14.8"

RUN yum update
RUN yum install -y wget unzip

RUN wget "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
RUN unzip -d /usr/local/bin "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
RUN terraform version

RUN mkdir /root/.aws
COPY ./aws_credentials /root/.aws/credentials
RUN mkdir /aws_tf
WORKDIR /aws_tf
COPY ./aws /aws_tf