#!/usr/bin/expect
#change a login shell to tcsh
set user [lindex $argv 0]
spawn chsh $user
expect "]:"
send "/sbin/nologin \n"
expect eof
exit
