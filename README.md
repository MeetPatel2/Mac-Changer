# Mac-Changer
A MAC (Media Access Control) address is also known as physical address and it is unique identifier on network. it's allows you to change or "spoof" the MAC address of a network interface card (NIC) on your device. The MAC address is a unique hardware identifier assigned to your network interface by the manufacturer. 

# MacChanger
MacChanger is a script that makes the maniputation of MAC address of network interface. 

To change address randomly execute like this:
```
sudo ./MacChanger.sh eth0
```
To change specific address execute like this:
```
sudo ./MacChanger.sh eth0 00:00:00:00:00:00
```
To change it's original address execute like this:
```
sudo ./MacChanger.sh -O eth0
```

# Requirement
To run this script you should have installed macchanger.

On Debian, Ubuntu, Linux Mint, Kali Linux:
```
sudo apt-get update
sudo apt-get install macchanger
```
On Arch Linux or Manjaro:
```
sudo pacman -S macchanger
```
On Fedora, CentOS, RHEL:
```
sudo dnf install macchanger
```
