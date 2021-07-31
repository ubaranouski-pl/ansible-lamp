# Project Setup

OS requirements: **Debian 10**

## Environment setup

Clone this repository, navigate to the project root directory and run setup script

## Prepare project environment
```shell
sudo ./setup.sh
```
or if you want override the default project name [*symfony*] then pass it in the first argument 
```shell
sudo ./setup.sh my-app
```

## Install symfony project
To create symfony project run the commands below from the user's home directory
```shell
rm -rf my-app/public
symfony new --full --no-git my-app
```
