#!/bin/sh

echo "Generating new version identifier..."

VERSION=`git describe 2>/dev/null || git rev-parse --short HEAD`
echo -e "selinon_version = '${VERSION}'\n" > selinon/version.py

echo "Selinon version is '${VERSION}'"
