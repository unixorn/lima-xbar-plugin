# lima-xbar-plugin

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![Awesomebot](https://github.com/unixorn/lima-xbar-plugin/actions/workflows/awesomebot.yml/badge.svg)
![Superlinter](https://github.com/unixorn/lima-xbar-plugin/actions/workflows/superlinter.yml/badge.svg)
[![GitHub stars](https://img.shields.io/github/stars/unixorn/lima-xbar-plugin.svg)](https://github.com/unixorn/lima-xbar-plugin/stargazers)


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Description](#description)
- [Installation](#installation)
  - [Dependencies](#dependencies)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


[Lima](https://github.com/lima-vm/lima) is an alternative to using Docker Desktop on your Mac.

## Description

![Screen shot of Lima menu with a running vm](https://raw.githubusercontent.com/unixorn/lima-xbar-plugin/main/pix/limactl-screen-shot.png)

This plugin is compatible with [xbar](https://xbarapp.com/) and [SwiftBar](https://github.com/swiftbar/SwiftBar), and lets you start and stop lima VMs from the menubar.

## Installation

Copy `lima-plugin` to `~/Library/Application\ Support/xbar/plugins/lima-plugin.30s`, or run `make install`
### Dependencies

- [xbar](https://xbarapp.com/) - Allows you to make custom menubar apps with just scripts

- [jq](https://stedolan.github.io/jq/) - `brew install jq` - Used to parse the output of `limactl`