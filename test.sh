curl -Lo aws-iam-authenticator \
https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/latest/download/aws-iam-authenticator_linux_amd64

chmod +x aws-iam-authenticator
sudo mv aws-iam-authenticator /usr/local/bin/

aws-iam-authenticator version
