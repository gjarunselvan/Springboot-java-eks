curl -Lo aws-iam-authenticator \
https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/latest/download/aws-iam-authenticator_linux_amd64

chmod +x aws-iam-authenticator
sudo mv aws-iam-authenticator /usr/local/bin/

aws-iam-authenticator version

https://release-assets.githubusercontent.com/github-production-release-asset/99036030/af4e56a6-d3e4-4e16-a39c-ea77c9bc08f6?sp=r&sv=2018-11-09&sr=b&spr=https&se=2026-06-17T15%3A41%3A38Z&rscd=attachment%3B+filename%3Daws-iam-authenticator_0.7.18_linux_amd64&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2026-06-17T14%3A41%3A05Z&ske=2026-06-17T15%3A41%3A38Z&sks=b&skv=2018-11-09&sig=YqkPnxLIcfvgz3FjbQ239%2FRmRBX0VBRjLKcI%2Fb1auxI%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc4MTcxMDIyNCwibmJmIjoxNzgxNzA4NDI0LCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.L9Q0xR3gO_m1dvgk_9znTgsiQkoKp1QOv9LGITvoZWU&response-content-disposition=attachment%3B%20filename%3Daws-iam-authenticator_0.7.18_linux_amd64&response-content-type=application%2Foctet-stream
