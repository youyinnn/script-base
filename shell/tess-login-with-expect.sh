#!/usr/bin/expect

# ---------------------------
# Knowledge about ecpect reference:
# https://www.jianshu.com/p/70556b1ce932
# https://www.cnblogs.com/lzrabbit/p/4298794.html
# ---------------------------

set username [lindex $argv 0]
set cluster [lindex $argv 1]
set token1 [lindex $argv 2]
set token2 [lindex $argv 3]

spawn /tess login -c $cluster --username=$username --namespace=numessage

expect {
    "Pin + Yubikey Token:" {
        send "$token1\n"
        exp_continue
    }
    "Yubikey Token:" {
        send "$token2\n"
        exp_continue
    }
    # send eof when success
    "successfully authenticated" {
        send eof
    }
}
# if didn't expect eof that means the login was fail
# should return exit 1 code to tell jenkins this build was fail
expect eof