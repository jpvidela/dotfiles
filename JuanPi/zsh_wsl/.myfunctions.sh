#!/bin/zsh

# ----------------------
# My Functions
# ----------------------

# COLORS
# Green String
GREEN_TEXT='\e[1;32m'
NOCOLOR_TEXT='\e[0m'

# Creates a new directory then switch into it
    function mkcd()
    {
        mkdir $1 && cd $1
    }

# Stores the current PWD in order to a variable. Then, calling polo.sh will return to this path
function marco()
{
    export MARCO=$PWD
    echo "The current path:${GREEN_TEXT} $MARCO ${NOCOLOR_TEXT}has been saved. Call 'Polo' in order to get back here"
}

# Goes back to the path stored when calling marco
function polo()
{
    # Check if $MARCO has been set
    if [[ -v MARCO ]]
    then
        TEMP_VAR=$PWD
        echo "Going back..."
        cd $MARCO
        export MARCO=$TEMP_VAR
    else
        echo "Marco hasn't been called. Going back to${GREEN_TEXT} $OLDPWD ${NOCOLOR_TEXT}"
        cd $OLDPWD
    fi
}
