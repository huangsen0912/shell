#!/usr/bin/expect
set user [lindex $argv 0]
set timeout 30
spawn chsh $user
expect "]:" {
	send "/bin/tcsh "
}
expect eof
exit

