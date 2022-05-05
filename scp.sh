#!/usr/bin/expect -f

spawn bash -c "scp  -r /root/*.txt.zip  root@23.88.121.231:/root/fr/"
expect {
  -re ".*es.*o.*" {
    exp_send "yes\r"
    exp_continue
  }
  -re ".*sword.*" {
    exp_send "12345678\r"
  }
}
interact
