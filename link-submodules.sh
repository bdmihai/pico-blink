#!/bin/sh

git submodule add git@github.com:bdmihai/pico-doc doc
git submodule add git@github.com:bdmihai/pico-qbs qbs/modules/rp
git submodule add git@github.com:bdmihai/pico-tools tools
git submodule add git@github.com:bdmihai/pico-boot source/boot
git submodule add git@github.com:bdmihai/pico-rp2040 source/rp2040
git submodule add git@github.com:bdmihai/pico-sdk source/sdk

