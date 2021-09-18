# lima-xbar-plugin

[Lima](https://github.com/lima-vm/lima) is an alternative to using Docker Desktop on your Mac.

## Description

![Screen shot of Lima menu with a running vm](https://raw.githubusercontent.com/unixorn/lima-xbar-plugin/main/pix/limactl-screen-shot.png)

This plugin is compatible with [xbar](https://xbarapp.com/) and [SwiftBar](https://github.com/swiftbar/SwiftBar), and lets you start and stop lima VMs from the menubar.

## Installation

Copy `lima-plugin` to `~/Library/Application\ Support/xbar/plugins/lima-plugin.30s`, or run `make install`
### Dependencies

- [xbar](https://xbarapp.com/) - Allows you to make custom menubar apps with just scripts

- [jq](https://stedolan.github.io/jq/) - `brew install jq` - Used to parse the output of `limactl`