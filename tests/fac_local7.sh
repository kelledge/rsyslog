# added 2014-09-24 by Rgerhards

# This file is part of the rsyslog project, released under ASL 2.0
source $srcdir/diag.sh init
source $srcdir/diag.sh startup fac_local7.conf
source $srcdir/diag.sh tcpflood -m1000 -P 185
source $srcdir/diag.sh shutdown-when-empty # shut down rsyslogd when done processing messages
source $srcdir/diag.sh wait-shutdown       # and wait for it to terminate
source $srcdir/diag.sh seq-check 0 999 
source $srcdir/diag.sh exit
