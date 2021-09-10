#!/usr/bin/env bash

cardano-cli byron key keygen --secret key.skey
cardano-cli byron key signing-key-address --secret key.skey --mainnet
cardano-cli byron key signing-key-public --secret key.skey