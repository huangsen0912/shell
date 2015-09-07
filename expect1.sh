#!/usr/bin/expect
#change a login shell to tcsh
set user [lindex $argv 0]
spawn chsh $user
expect -re {\[(.*)\]:}
if {$expect_out(1,string) != "/sbin/nologin"} {
	send "/sbin/nologin"
}
#send  $expect_out(1,string)

send "\n"
expect eof
exit
