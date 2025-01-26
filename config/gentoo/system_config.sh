#!/usr/bin/env bash
config=`pwd`

# locale
cp --force --verbose ${config}/locale.gen   /etc
cp --force --verbose ${config}/locale.conf  /etc

# portage
rm --force --recursive /etc/portage/package.accept_keywords
rm --force --recursive /etc/portage/package.use
rm --force --recursive /etc/portage/package.mask
mkdir --parent /etc/portage/repos.conf
mkdir --parent /var/db/repos/gentoo
cp --force --verbose ${config}/package.accept_keywords /etc/portage
cp --force --verbose ${config}/package.use /etc/portage
cp --force --verbose ${config}/package.mask /etc/portage
cp --force --verbose ${config}/make.conf /etc/portage/make.conf
cp --force --verbose ${config}/gentoo.conf /etc/portage/repos.conf

# cfg-update
mkdir --parent /var/cfg-update
cp --force --verbose ${config}/cfg-update.conf /etc

# pacm.d
cp --force --verbose ${config}/passwdqc.conf /etc/security

# sudo
mkdir --parent /etc/sudoers.d
cp --force --verbose ${config}/china /etc/sudoers.d

# docker
mkdir --parent /etc/docker
cp --force --verbose ${config}/docker-daemon.json /etc/docker/daemon.json

# wsl.conf
cp --force --verbose ${config}/wsl.conf /etc