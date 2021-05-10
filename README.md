# Tenant-Onboarding

### Steps to bring up Container to running tenant onboarding scripts without having this to be installed on virtual machine  

##### Step1 : docker build . < Dockerfile
##### Step2 : docker run -it --env GITHUB_TOKEN=<TOKEN> -v "/var/run/docker.sock:/var/run/docker.sock" -v ~/.aws/credentials:/root/.aws/credentials:ro <Continer-Image/image-ID>
##### Step3 : Follow the steps from  https://wiki.hpelabs.net/pages/viewpage.action?spaceKey=HCSS&title=Tenant+Onboarding+-+CSO i..e "Initial setup"
 
 
 
 ### NOTE : Since it an docker container running another instance of docker container to run terraform scripts.
            currently volume mount does not work properly. As an work around edit the file /root/.aws/credentials and place the creds required inside this and then start "Terraform Okta Org"
 
