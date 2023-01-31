set history save
set history expansion
set history size 2048
set print object on
handle SIGUSR1 nostop noprint
handle SIGUSR2 nostop noprint
handle SIGWAITING nostop noprint
handle SIGLWP nostop noprint
handle SIGPIPE nostop
handle SIGALRM nostop
handle SIG32 nostop noprint
handle SIG34 nostop noprint
handle SIG35 nostop noprint
set python print-stack full
add-auto-load-safe-path /usr/share/go-1.12/src/runtime/runtime-gdb.py
