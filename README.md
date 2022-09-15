
# My Nixos config 

## update 

`sudo nixos-rebuild switch` to build latest config, update and switch to it. 
`sudo nixos-rebuild boot` to build latest config and switch at next boot. This is safer. 

## update channels

`nix-channel --list | grep nixos` list current update channel (stable, small, unstable).

`nix-channel --add https://nixos.org/channels/nixos-22.05 nixos` to switch to the (currently) lastest stable channel.

`nix-channel --add https://nixos.org/channels/nixos-unstable nixos` to switch to the unstable channel.

Then run `nixos-rebuild switch`.
