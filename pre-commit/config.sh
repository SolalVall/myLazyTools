#!/bin/bash
PRE_COMMIT_CONF_LOCATION="$HOME/.git-pre-commit"
PRE_COMMIT_TOOL_LOCATION="$HOME/.lazyTools.d/pre-commit"

###
# Configure pre-commit to be enable by default on each proejct
# Based on: https://pre-commit.com/#automatically-enabling-pre-commit-on-repositories
###
# Configure 'git init' to load the template dir when we init a new git project
git config --global init.templateDir $PRE_COMMIT_CONF_LOCATION

# Add the base pre-commit hook in the newly created template dir
pre-commit init-templatedir $PRE_COMMIT_CONF_LOCATION

# Add some of my pre-commit template to the template dir (will be availble in new repos created)
cp -R $PRE_COMMIT_TOOL_LOCATION/templates $PRE_COMMIT_CONF_LOCATION
