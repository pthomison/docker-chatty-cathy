#! /usr/bin/env bash

##

function chat() {
  function echoerr() {
    echo "$@" 1>&2;
  }

  function echoout()  {
    echo "$@";
  }
  while true; do
    echoout $CHATTY_CATHY_STDOUT_MESSAGE;
    echoerr $CHATTY_CATHY_STDERR_MESSAGE;
    sleep $CHATTY_CATHY_SLEEP_TIME;
  done
}

export -f chat

timeout $CHATTY_CATHY_TIMEOUT bash -c chat
