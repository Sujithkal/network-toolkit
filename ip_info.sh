#!/bin/bash
echo "==========================="
echo "🧾 IP Address Information"
echo "==========================="
hostname -I
echo

echo ">> Interface details:"
ip a

echo
echo ">> Default gateway:"
ip route | grep default
