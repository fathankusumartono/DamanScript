#!/usr/bin/expect
set timeout 20
set hostName [lindex $argv 0]
set userName [lindex $argv 1]
set password [lindex $argv 2]

spawn telnet $hostName

expect "Username:"
send "$userName\r"
expect "Password:"
send "$password\r"
send "show card\r"

interact
