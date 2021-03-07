# FROM hashicorp/terraform:light
FROM amazon/aws-cli

RUN yum update
RUN yum install -y wget unzip

RUN wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip
RUN unzip -d /usr/local/bin terraform_0.12.2_linux_amd64.zip
RUN terraform version

RUN mkdir /infra
WORKDIR /infra
COPY . /infra