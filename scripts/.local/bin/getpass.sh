#!/bin/sh
gopass ls --flat | dmenu | xargs --no-run-if-empty gopass show -c
