#!/bin/bash
exec 2>$1
exec /opt/sonar/bin/linux-x86-64/sonar.sh console /bin/bash
