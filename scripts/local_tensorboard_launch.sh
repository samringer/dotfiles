#!/bin/bash

nohup ssh -NL localhost:$2:localhost:$2 $1 &
sleep 3
open "http://localhost:$2"
exit 0
