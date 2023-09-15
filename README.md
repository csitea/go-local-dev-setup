# go-local-dev-setup
A dockerized local-dev setup for the go programmin language

## PREREQUISITES
A host with *nix OS, bash 4 or greater and docker, with file sharing enabled for the `/opt/` 
dir for the docker preferences, resources , file sharing setting. 


## SETUP 

```bash
mkdir -p /opt/vei && cd $_ # create the projekt base dir and cd to it
git checkout <<git-url>> . # checkout the git proj
cd <<product>>             # go to the proj root dir
make install               # Action !!!
```

This will build the docker img and spawn a container. Follow the terminal output to attach to the container.

## USAGE 
You can open the code natively and run the go code via the terminal ... the setup does have a volume sharing - aka the src updates from the host will be visible and accessible in the container.
