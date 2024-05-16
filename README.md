# lima-xbar-plugin

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![Awesomebot](https://github.com/unixorn/lima-xbar-plugin/actions/workflows/awesomebot.yml/badge.svg)
![Megalinter](https://github.com/unixorn/lima-xbar-plugin/actions/workflows/megalinter.yml/badge.svg)
![codeql](https://github.com/unixorn/lima-xbar-plugin/actions/workflows/codeql-analysis.yml/badge.svg)
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

This plugin is compatible with [xbar](https://xbarapp.com/) and [SwiftBar](https://github.com/swiftbar/SwiftBar), and provides a menubar app that creates a Lima menubar option with submenus for each Lima VM on your machine. For each VM, you can:

- start/stop the VM
- stop, start or remove stopped containers
- pull or remove images from the VM
- Run an arbitrary command inside the VM with `lima`

### Screen shots

![Screen shot of xbar menu with container submenu for a running vm](https://raw.githubusercontent.com/unixorn/unixorn.github.io/master/images/lima-xbar/containers-submenu.png)

![Screen shot of xbar menu with image submenu for a running vm](https://raw.githubusercontent.com/unixorn/unixorn.github.io/master/images/lima-xbar/images-submenu.png)

### Theme

Rename the plugin file to lima-plugin.[theme].[time_ext] to switch to the specified theme

e.g.
 - lima-plugin.10s                 -> default
 - lima-plugin.default.10s         -> default
 - lima-plugin.text.10s            -> text
 - lima-plugin.sf_simple.10s       -> sf_simple
 - lima-plugin.sf_simple.10s.py    -> sf_simple

Theme default:
![Theme default](https://raw.githubusercontent.com/exculibar/lima-xbar-plugin/custom_icons/screenshots/91713774470_.pic.jpg)

Theme text:
![Theme text](https://raw.githubusercontent.com/exculibar/lima-xbar-plugin/custom_icons/screenshots/101713774523_.pic.jpg)

Theme sf_simple:
![Theme sf_simple 1](https://raw.githubusercontent.com/exculibar/lima-xbar-plugin/custom_icons/screenshots/111713774589_.pic.jpg)
![Theme sf_simple 2](https://raw.githubusercontent.com/exculibar/lima-xbar-plugin/custom_icons/screenshots/121713774642_.pic.jpg)

## Installation

Copy `lima-plugin` to `~/Library/Application\ Support/xbar/plugins/lima-plugin.30s`, or run `make install`
### Dependencies

- [xbar](https://xbarapp.com/) or [SwiftBar](https://github.com/swiftbar/SwiftBar) - Both allow you to make custom menubar apps with simple scripts.
