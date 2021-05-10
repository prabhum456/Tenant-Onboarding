From 657273346644.dkr.ecr.us-east-1.amazonaws.com/hpe-hcss/cluster-gen:latest

RUN pip3 --no-cache-dir install --upgrade awscli

RUN apk add --no-cache bash \
                       curl \
                       jq \
                       openssl \
                       py3-pip

RUN apk add --no-cache git make musl-dev go

# Configure Go
ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

RUN mkdir -p ${GOPATH}/src ${GOPATH}/bin

ARG SOPS="https://github.com/mozilla/sops/releases/download/v3.5.0/sops-v3.5.0.linux"
RUN curl -SsLf "$SOPS" > /usr/local/bin/sops && \
    chmod +x /usr/local/bin/sops

ARG KUBECTL="https://storage.googleapis.com/kubernetes-release/release/v1.19.9/bin/linux/amd64/kubectl"
RUN curl -SsLf "$KUBECTL" > /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

ARG AWS_IAM_AUTH="https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.2/aws-iam-authenticator_0.5.2_linux_amd64"
RUN curl -SsLf "$AWS_IAM_AUTH" > /usr/local/bin/aws-iam-authenticator && \
    chmod +x /usr/local/bin/aws-iam-authenticator

RUN pip3 install requests

RUN git clone https://github.com/hpe-hcss/iam-terraform-spoke.git && cd iam-terraform-spoke && export PATH=${PATH}:${HOME}/.local/bin

ENTRYPOINT ["/bin/bash"]
