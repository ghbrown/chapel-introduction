#!/bin/sh

# makes Chapel binary available from anywhere by aliasing the Singularity image

# get space escaped path to directory containing this file (partially Stack Overflow)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd | sed 's/ /\\ /g')

# set alias so chpl aliases to compiler, and alias to execute with proper libraries
alias chpl="singularity exec "${SCRIPT_DIR}"/chapel.img chpl"
alias chplexec="singularity exec "${SCRIPT_DIR}"/chapel.img"
