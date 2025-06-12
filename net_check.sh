#!/bin/bash
echo "=============================="
echo "🔧 Checking Network Connection"
echo "=============================="

echo ">> Checking IP address..."
ip a | grep inet

echo ">> Checking Default Gateway..."
ip route | grep default

echo ">> Pinging Google..."
ping -c 4 google.com

echo ">> Pinging 8.8.8.8 (DNS)..."
ping -c 4 8.8.8.8
