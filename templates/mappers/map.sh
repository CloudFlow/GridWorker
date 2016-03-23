#!/bin/bash

log ()
{
  logTimestamp=`date --rfc-3339=seconds`
  logComponent="gridworker:mapper:script:"
  logMessage=$1
  echo "[$logTimestamp] $logComponent $logMessage" >> ${_LOGFILE}
}


check ()
{
  log "checked"
}

abort ()
{
  log "aborted"
}



notify ()
{
  log "notification $1 received"
}


map ()
{
  # call your application here
}


${_COMMAND}

exit 0


