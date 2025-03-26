<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Lima Xbar/Swiftbar changelog](#lima-xbarswiftbar-changelog)
  - [0.0.1 - 1.0.0](#001---100)
  - [1.1.1](#111)
  - [1.2.0](#120)
  - [1.3.0](#130)
  - [1.3.1](#131)
  - [1.3.2](#132)
  - [1.3.3](#133)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Lima Xbar/Swiftbar changelog

## 0.0.1 - 1.0.0

- `bash` proof of concept

## 1.1.1

- Rewrite in Python for speed and maintainability.
  - Now have submenus for container and image operations instead of just start/stop the VM
  - We send notifications to the Notification Manager

## 1.2.0

- Add option to pull new image into one of your Lima VMs.

## 1.3.0

- Add option to run an arbitrary `lima` command in a VM.

## 1.3.1

- Add `/opt/homebrew/bin` to the plugin's `$PATH` when it exists and is a directory.

## 1.3.2

- Swiftbar started capturing `stderr` in addition to `stdout`, causing log messages to spam the menu bar. Default to log level critical so we don't spam log messages (that no one was seeing anyway) except when we're testing.

## 1.3.3

dd more candidate directories to be added to $PATH

- Check for `~/homebrew/bin` and `~/homebrew/sbin` to cope when homebrew
  is installed in a user's home directory. Closes https://github.com/unixorn/lima-xbar-plugin/issues/28
- While we're in there, check for `/usr/local/sbin`,
  `/opt/homebrew/sbin`, `/opt/local/sbin`, `~/bin` and `~/sbin`
  directories too.
