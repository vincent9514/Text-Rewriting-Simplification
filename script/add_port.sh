sudo iptables -A INPUT -p tcp --dport 8008 -m state --state NEW -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 6006 -m state --state NEW -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 8888 -m state --state NEW -j ACCEPT
