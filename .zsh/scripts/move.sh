#!/#!/usr/bin/env bash
# Move your compressed files to a new folder
for file in *.tar.gz; do "$(mv $file ./compressed/)"; done
