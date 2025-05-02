#!/bin/bash
echo "==== Users on System ===="
cut -d: -f1 /etc/passwd | head -n 5

echo "==== Groups on System ===="
getent group | head -n 5

echo "==== Users with UID 0 ===="
awk -F: '$3 == 0 { print $1 }' /etc/passwd

echo "==== World-Writable Files (first 5) ===="
find / -type f -perm -0002 2>/dev/null | head -n 5

echo "==== Files with SUID/SGID (first 5) ===="
find / -perm /6000 -type f 2>/dev/null | head -n 5

echo "==== Running Services (top 5) ===="
ps -e | head -n 6

echo "==== Listening Ports ===="
ss -tuln

echo "==== IPv6 Status ===="
cat /proc/sys/net/ipv6/conf/all/disable_ipv6

echo "==== Public IP ===="
curl -s ifconfig.me

echo "==== Private IPs ===="
ip a | grep inet | head -n 5

echo "==== SSH Login Failures (last 5) ===="
grep "Failed password" /var/log/auth.log 2>/dev/null | tail -n 5
