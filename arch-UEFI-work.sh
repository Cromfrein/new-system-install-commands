#!/bin/bash
read -p "Internet must be established before continuing. [y/n]" cromnet
if [ netstat = n ]
then exit
fi

read -p "Are you sure you want to start? Will abort if anything but [y] is entered." cromconf
if [ cromconf != y ]
then exit
fi

# Hardware Autodetection
#install drive will be crominsdir
# Installation

timedatectl set-ntp true

reflector --protocol https --sort rate --save /etc/pacman.d/mirrorlist
if [ crompart = a ]
then
  # add 300M fat32 for EFI partition
  # add Swap partition of size 2xRAMSIZE with a max of 8gb.
  # add BTRFS partition
fi
mount --mkdir $crominsdir"3" /mnt
mount --mkdir $crominsdir"1" /mnt/boot
swapon $crominsdir"2"

pacstrap /mnt base base-devel linux linux-firmware nano git exfat-utils
