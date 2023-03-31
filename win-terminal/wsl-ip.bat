############# fix wsl  network issue without vpn####################
1. Download the prebuilt file wsl-vpnkit.tar.gz from the latest release and import the distro into WSL
2. Running the wsl-vpnkit service before you launch Ubuntu etc.

wsl --import wsl-vpnkit $env:USERPROFILE\wsl-vpnkit wsl-vpnkit.tar.gz --version 2
wsl.exe -d wsl-vpnkit service wsl-vpnkit start

#---------following only for knowlege information ---------------
### other start for wsl ip related
wsl -d Ubuntu-20.04 -u root ip addr del $(ip addr show eth0 | grep 'inet\b' | awk '{print $2}')  dev eth0
wsl -d Ubuntu-20.04 -u root ip addr add 10.162.39.105/24 broadcast 192.168.50.255 dev eth0
wsl -d Ubuntu-20.04 -u root ip route add 0.0.0.0/0 via 10.162.39.103 dev eth0
wsl -d Ubuntu-20.04 -u root echo "nameserver 10.155.160.55" > /etc/resolv.conf


powershell -c "Get-NetAdapter 'vEthernet (WSL)' | Get-NetIPAddress | Remove-NetIPAddress -Confirm:$False; New-NetIPAddress -IPAddress 192.168.50.1 -PrefixLength 24 -InterfaceAlias 'vEthernet (WSL)'; Get-NetNat | ? Name -Eq WSLNat | Remove-NetNat -Confirm:$False; New-NetNat -Name WSLNat -InternalIPInterfaceAddressPrefix 192.168.50.0/24;"
:: Get-NetIPAddress -InterfaceAlias 'vEthernet (WSL)' | Remove-NetIPAddress -confirm:$false    # remove IPAddress
:: New-NetIPAddress -InterfaceAlias 'vEthernet (WSL)' -IPAddress '10.0.0.111' -PrefixLength 24 # set IPAddress
:: Set-DnsClientServerAddress -InterfaceAlias 'vEthernet (WSL)' -ServerAddresses ("10.0.0.1","119.29.29.29")


Set-VMSwitch WSL -NetAdapterName Wi-Fi
sudo ip addr del $(ip addr show eth0 | grep 'inet\b' | awk '{print $2}' | head -n 1) dev eth0
sudo ip addr add 10.0.0.150/24 broadcast 10.0.0.255 dev eth0
sudo ip route add 0.0.0.0/0 via 10.0.0.1 dev eth0



在/etc/wsl.conf中加入：
[network]
generateResolvConf = false

PowerShell重启WSL
wsl.exe --shutdown

#edit /etc/resolv.conf to use Public DNS
nameserver 223.5.5.5
nameserver 223.6.6.6


######### set vpn jump point priority lower, to be validated
Set-NetIPInterface -InterfaceAlias 'vEthernet (WSL)' -InterfaceMetric 6000    # set jump point priority
Set-NetIPInterface -InterfaceAlias 'vEthernet (Default Switch)' -InterfaceMetric 6000    # set jump point priority

Set-NetIPInterface -InterfaceAlias 'vEthernet (WSL)' -AutomaticMetric enabled # reset



