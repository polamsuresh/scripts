
// Install docker in Ubuntu. 
// for the docker documentation for updated info. the instructions below are from https://docs.docker.com/engine/install/ubuntu/

//Update the apt package index and install packages to allow apt to use a repository over HTTPS:

// sudo apt-get update

// sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
	
// Add Docker’s official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

//Verify that you now have the key with the fingerprint

  sudo apt-key fingerprint 0EBFCD88

//Use the following command to set up the stable repository. To add the nightly or test repository, add the word nightly or test (or both) after the word stable in the commands below

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
   
// Update the apt package index, and install the latest version of Docker Engine and containerd, or go to the next step to install a specific version: 
   sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io

-------------Optional----------------
To install a specific version of Docker Engine, list the available versions in the repo, then select and install:

//a. List the versions available in your repo:

 apt-cache madison docker-ce

  docker-ce | 5:18.09.1~3-0~ubuntu-xenial | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 5:18.09.0~3-0~ubuntu-xenial | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 18.06.1~ce~3-0~ubuntu       | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 18.06.0~ce~3-0~ubuntu       | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
  ...

//b. Install a specific version using the version string from the second column, for example, 5:18.09.1~3-0~ubuntu-xenial.

sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io

-----------------------------

// Verify that Docker Engine is installed correctly by running the hello-world image.

sudo docker run hello-world
