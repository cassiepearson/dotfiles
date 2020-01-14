#!/usr/bin/env bash
# Bulk compress the contents of your working directory
for file in *
do
  "$(tar -czvf $file.tar.gz $file)"
done
