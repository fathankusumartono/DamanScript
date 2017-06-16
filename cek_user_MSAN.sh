#!/usr/bin/expect
set timeout 3
set hostName [lindex $argv 0]
set username "*****"
set password "*****"
set i 1
set x 1

proc showShelf {shelf slot} {
	expect "#"
	send "show msag sip user shelf $shelf $slot\r"

	expect {
	  " --More--" {
	  send " "
	  exp_continue
	 }
	 "#" {
	  send_user "Ganti shelf!\n"
	 }
	}
}

spawn telnet $hostName
expect "Username:"
send "$username\r"
expect "Password:"
send "$password\r"

while {$x < 3} {
  while {$i < 21} {
	showShelf $x $i
	set i [expr $i+1]
  }
  set x [expr $x+1]
  set i 1
  #send_user "x=$x; i=$i"
}

expect "#"
send "exit\r"
interact
