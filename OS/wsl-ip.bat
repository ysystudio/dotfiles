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
