#!/usr/bin/expect
set timeout 20
set hostName [lindex $argv 0]
set username {zte 650736 asurance}
set password {zte Maint805 Asur4nce}
set index 0
set masuk 0

proc login {user pass} {
    expect "Username:"
    send "$user\r"
    expect "Password:"
    send "$pass\r"
}

spawn telnet $hostName

login [lindex $username $index] [lindex $password $index]
expect {
"failed" {
 incr index
 login [lindex $username $index] [lindex $password $index]
 exp_continue
}
"bad password" {
 incr index
 login [lindex $username $index] [lindex $password $index]
 exp_continue
}
"#" {
 send_user "Berhasil login!\n"
 send "show card\r"
 expect {
  " --More--" {
  send " "
  exp_continue
  }
  "#" {
  send "exit\r";
  }
 }
}
}
interact
