#!/usr/bin/expect
set timeout 20
set hostName [lindex $argv 0]
#put username and password combination here in order
set username {***** ******}
set password {***** ******}
set index 0
set masuk 0

proc login {user pass} {
    expect "name:"
    send "$user\r"
    expect "assword:"
    send "$pass\r"
}

spawn telnet $hostName

login [lindex $username $index] [lindex $password $index]
expect {
"Fail!" {
 incr index
 login [lindex $username $index] [lindex $password $index]
 exp_continue
}
">" {
 send_user "Berhasil login!\n"
 send "display board 0\r"
 expect {
  "More" {
  send " "
  exp_continue
  }
  ">" {
  send "quit\r";
  send "y\r"
  }
 }
}
}
interact
