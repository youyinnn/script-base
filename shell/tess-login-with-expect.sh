#!/usr/bin/expect

# ---------------------------
# Knowledge about ecpect reference:
# https://www.jianshu.com/p/70556b1ce932
# https://www.cnblogs.com/lzrabbit/p/4298794.html
# ---------------------------

set username [lindex $argv 0]
set cluster [lindex $argv 1]
set token1 [lindex $argv 2]
set token2 [lindex $argv 2]

spawn ./tess login --username=$username -c $cluster

expect {
    "Pin + Yubikey Token:" {
        send "$token1\n"
        exp_continue
    }
    "Yubikey Token:" {
        send "$token2\n"
    }
}

expect eof