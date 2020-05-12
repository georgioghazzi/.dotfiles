#!/bin/bash
top -b -n1 | awk 'begin {print "pid","cpu","mem","cmd"} {print $1,$9,$10,$12}'
