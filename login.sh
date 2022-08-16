#!/usr/bin/expect -f
:set fileformat=unix
spawn docker login
expect "login:"
send "username\r"
expect "Password:"
send "password\r"interact
