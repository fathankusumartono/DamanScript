#!/usr/bin/expect
set timeout 3
set hostName [lindex $argv 0]
set username "******"
set password "******"
set i 1
#change slot variable here
set slots {2 3 4 5 6 7 8 9 12 13}
set index 0

proc showShelf {shelf slot port number} {
	expect "#"
	send "show onu running config gpon-onu_$shelf/$slot/$port:$number\r"
	
	expect {
	  " --More--" {
	  send " "
	  exp_continue
	 }
	 "#" {
	  send_user "Next!\n"
	 }
	}
}

spawn telnet $hostName
expect "Username:"
send "$username\r"
expect "Password:"
send "$password\r"

while {$index != [llength $slots]} {
  while {$i < 33} {
	#change the shelf slot port and number here
        showShelf 1 [lindex $slots $index] 8 $i
	set i [expr $i+1]
  }
  set i 1
  incr index
}

expect "#"
send "exit\r"
interact
