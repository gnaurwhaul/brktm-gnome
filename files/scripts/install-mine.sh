#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

software="https://github.com/coalton-lang/coalton/releases/download/mine-v0.1.6/mine-core-linux-x86_64-v0.1.6.zip"

# install Mine into tempdir
wget "$software" -O "$tmpdir/mine.zip"

unzip "$tmpdir/mine.zip" -d "$tmpdir"
install -Dm755 -o root -g root "$tmpdir/mine/mine" /usr/bin/mine
