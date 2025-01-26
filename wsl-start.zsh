!/usr/bin/env zsh

REPOSITORY=~/repository

PACKAGE_HOME=$REPOSITORY/packages

mkdir --parent $PACKAGE_HOME

# # zsh
# cp --force --verbose ./config/zshenv ~/.zshenv
# touch ~/.zshrc
# rm --recursive --force ~/.zsh
# cp --recursive --force --verbose ./config/zsh ~/.zsh
# rm --recursive --force $PACKAGE_HOME/zsh-linux
# cp --recursive --force --verbose ./config/zsh-plugin $PACKAGE_HOME/zsh-linux

# # git
# cp --force --verbose ./config/gitconfig ~/.gitconfig
# # lsd
# mkdir --parent ~/.config/lsd/
# cp --force --verbose ./config/lsd.yaml ~/.config/lsd/config.yaml
# # bat
# cp --force --verbose ./config/bat.conf $REPOSITORY/bat.conf
# navi
cp --force --verbose ./config/navi.yaml $REPOSITORY/navi.yaml
mkdir --parent $REPOSITORY/cheatsheet
cp --force --verbose ./config/navi.yaml $REPOSITORY/cheatsheet/config.yaml
cp --recursive --force --verbose ./cheatsheet $REPOSITORY

# # maven
# mkdir --parent ~/.m2
# cp --force --verbose ./config/maven-settings.xml ~/.m2/settings.xml

# # cargo
# CARGO_HOME=$PACKAGE_HOME/cargo-linux
# mkdir --parent $CARGO_HOME
# cp --force --verbose ./config/cargo.toml $CARGO_HOME/config.toml

# # pip
# PIP_HOME=$PACKAGE_HOME/pip-linux
# mkdir --parent $PIP_HOME
# cp --force --verbose ./config/pip.ini $PIP_HOME/pip.ini

# # npm
# NPM_HOME=$PACKAGE_HOME/npm-linux
# cp --force --verbose ./config/npmrc ~/.npmrc

# # IntellJ
# INTELLJ_HOME=$PACKAGE_HOME/intellj-plugins
# mkdir --parent $INTELLJ_HOME
# cp --force --verbose ./config/idea.properties $INTELLJ_HOME/idea.properties
# cat ./config/idea64.exe.vmoptions | sed "s/plugin-place/${INTELLJ_HOME//\//\\/}/" > $INTELLJ_HOME/idea64.exe.vmoptions

# docker
cp --recursive --force --verbose ./config/docker-compose $REPOSITORY

# # # vim
# # cp --force --verbose ./config/vimrc ~/.vimrc

# # rm -rf $PACKAGE_HOME/vim-runtime
# # cp --recursive --force --verbose ./config/vim $PACKAGE_HOME/vim-runtime



