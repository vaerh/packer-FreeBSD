#!/bin/sh
set -e

# Disable root logins
sed -i '' -e 's/^PermitRootLogin yes/#PermitRootLogin no/' /etc/ssh/sshd_config

# Purge files we no longer need
rm -rf /boot/kernel.old
rm -f /etc/hostid
rm -f /etc/ssh/ssh_host_*
rm -f /root/*.iso
rm -f /root/.vbox_version
rm -rf /tmp/*
rm -rf /var/db/freebsd-update/files/*
rm -f /var/db/freebsd-update/*-rollback
rm -rf /var/db/freebsd-update/install.*
rm -f /var/db/pkg/repo-*.sqlite
rm -f /var/db/machine-id
rm -rf /var/log/*
