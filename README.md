# Chef-recipe-to-add-SWAP-to-VM
This Chef recipe adds swap to your VM/EC2 machines.  Chef recipe to add SWAP to VM that can be used to integare with OpsWorks

Allows you to use t2.micro as t2.medium RAM ;)
Particularly useful when running `npm install` or `composer udpate` of having problem which can use a lot of memory and be killed during the provisioning.

Tested on Vagrant + Ubuntu 18.04.

Source : [https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-16-04]

Add in your Berksfile

    cookbook 'addswap', git: 'git@github.com:corevalue-technologies/Chef-recipe-to-add-SWAP-to-VM.git'

and add recipe 'addswap' in your run list.

You can change required Memory in attributes/default.rb

PS: The added Swap memory will be persistent i.e. will remain even you restart the system.

