#!/bin/bash
exec 2>$1
exec mysqld_safe
