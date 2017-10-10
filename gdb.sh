#!/bin/bash

GDB_CMDS=${1:?"undefined <GDB_CMDS>"};shift
RUNNING=${1};shift

ps h -C gdb -o pid |xargs -i kill -9 '{}'

GET_MYSQL_PID="ps h -C mysqld -o pid"

if [ -n ${RUNNING} ];then
	pid=$(${GET_MYSQL_PID})
else
	${GET_MYSQL_PID} | xargs -i kill -9 '{}'
fi

gdb -q sql/mysqld ${pid} --tui -x ${GDB_CMDS}
