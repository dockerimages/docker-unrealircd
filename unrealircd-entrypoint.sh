#!/bin/bash

chown -R ircd:ircd /home/ircd/unrealircd

exec "$@"
