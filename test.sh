Verify:

java -version
3.3 Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

sudo apt install unzip -y

unzip awscliv2.zip

sudo ./aws/install

Verify:

aws --version
3.4 Install AWS IAM Authenticator
curl -Lo aws-iam-authenticator https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/latest/download/aws-iam-authenticator_linux_amd64

chmod +x aws-iam-authenticator

sudo mv aws-iam-authenticator /usr/local/bin/

Verify:

aws-iam-authenticator version
3.5 Install Docker
sudo apt install docker.io -y

Start Docker:

sudo systemctl enable docker
sudo systemctl start docker

Verify:

docker --version
sudo systemctl status docker
3.6 Install Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update

sudo apt install jenkins -y

Start Jenkins:

sudo systemctl enable jenkins
sudo systemctl start jenkins

Verify:

sudo systemctl status jenkins
Get Jenkins Password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
Access Jenkins

Open:

http://<EC2-PUBLIC-IP>:8080

Paste the password and complete the initial setup.

Before moving to Step 4, verify:
java -version
aws --version
docker --version
sudo systemctl status docker
sudo systemctl status jenkins

Send me the outputs (or screenshots), and I'll give you Step 4: Docker Volume + Docker Network + Run Jenkins Container, which is worth 20 marks in your evaluation.
