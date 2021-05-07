# Tenant-Onboarding

### Steps to bring up Container to running tenant onboarding scripts without having this to be installed on virtual machine  

##### Step1 : docker build . < Dockerfile
##### Step2 : docker run -it --env GITHUB_TOKEN=<TOKEN> -v "/var/run/docker.sock:/var/run/docker.sock" -v ~/.aws/credentials:/root/.aws/credentials:ro <Continer-Image/image-ID>
##### step3 : Follow the steps from  https://wiki.hpelabs.net/pages/viewpage.action?spaceKey=HCSS&title=Tenant+Onboarding+-+CSO i..e "Initial setup"
 
