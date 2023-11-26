#!/bin/sh

# find dirs
cd $(find . -type d -print | fzf)
