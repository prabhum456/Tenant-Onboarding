# Tenant-Onboarding

### Steps to bring up container to run tenant onboarding scripts.

    git clone https://github.com/prabhum456/Tenant-Onboarding.git 
    cd Tenant-Onboarding

##### Step1 : docker build -t [Image-Name] .
##### Step2 : docker run -it -v "/var/run/docker.sock:/var/run/docker.sock" [Image-Name/image-ID]
##### Step3 : Follow the steps from  https://wiki.hpelabs.net/pages/viewpage.action?spaceKey=HCSS&title=Tenant+Onboarding+-+CSO i..e "Initial setup"
 
 
 
 ### NOTE : 
         Make sure AWS Creds are present in /root/.aws/credentials path on HOST machine where docker is running
 
