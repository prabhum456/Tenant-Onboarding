# Tenant-Onboarding

### Steps to bring up Container to running tenant onboarding scripts without having this to be installed on virtual machine  

##### Step1 : docker build -t <image-name> .
##### Step2 : docker run -it -v "/var/run/docker.sock:/var/run/docker.sock" <Continer-Image/image-ID>
##### Step3 : Follow the steps from  https://wiki.hpelabs.net/pages/viewpage.action?spaceKey=HCSS&title=Tenant+Onboarding+-+CSO i..e "Initial setup"
 
 
 
 ### NOTE : 
         Make sure AWS Creds are present in /root/.aws/credentials path on HOST machine where docker is running
 
