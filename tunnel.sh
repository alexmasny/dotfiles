#!/usr/bin/env bash
### TODO: make this into a jupyter notebook

# Setup

## Preparing Proxy

# step 1: navigate to fastssh.com
# step 2: click "Select in Europe"
# step 3: click "Create SSH Account France"
# step 4a: record Dropbear Port, OpenSSH Port
# step 4b: fill in Username, Password, and CAPTCHA
# step 4c: click "Create Account"
# step 4d: record Username SSH, Password SSH, Host IP Addr

## Running Proxy

# step 5: run
USERNAME="fastssh.com-UNAME"
ssh -NqD 2001 $USERNAME@fr.serverip.co -p 443

# step 6: type yes, then enter, then password, then enter
### TODO: make ssh non-interactive (use password prompt and automatically background)

# step 7 suspend this process with (CTRL-Z or the inspector). Check with the following command:
bg 1

# step 8: set system preferences > network > advanced > proxies > SOCKS to Host=localhost and Port=2001

# step 9: run this command
TARGETSITE=cthoyt_cthoyt@ssh.phx.nearlyfreespeech.net
ssh -o ProxyCommand='nc -x localhost:2001 %h %p' $TARGETSITE

# step 10: do what comes natural. logout before starting teardown

## Teardown

# check what's running with jobs
jobs

# step 11: bring this job back to foreground with fg, then kill it w/ CTRL-C
fg 1

jobs # should show nothing now
killall ssh # just in case

# step 12: go back into system preferences and turn off SOCKS proxy
