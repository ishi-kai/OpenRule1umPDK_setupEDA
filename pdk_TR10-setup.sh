#!/bin/bash
# ========================================================================
# Initialization of IIC Open-Source EDA Environment for OpenRule1umPDK
#
# SPDX-FileCopyrightText: 2023-2024 Mori Mizuki, Noritsuna Imamura 
# ISHI-KAI
# 
# SPDX-FileCopyrightText: 2021-2022 Harald Pretl, Johannes Kepler 
# University, Institute for Integrated Circuits
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0
#
# This script installs xschem, ngspice, magic, netgen, klayout
# and a few other tools for use with OpenRule1umPDK.
# This script supports WSL(Windows Subsystem for Linux), Ubuntu 22.04, Mac M core series.
# ========================================================================

# Define setup environment
# ------------------------
export SRC_DIR="$HOME/src"
my_path=$(realpath "$0")
my_dir=$(dirname "$my_path")
export SCRIPT_DIR="$my_dir"
export KLAYOUT_VERSION=0.29.5

# for Mac
export MAC_OS_NAME=Sonoma
export TCL_VERSION=8.6.14
export TK_VERSION=8.6.14
export GTK_VERSION=3.24.42
export CC_VERSION=-14
export CXX_VERSION=-14

# ---------------
# Now go to work!
# ---------------


if [ ! -d "$HOME/.xschem/symbols" ]; then
  mkdir -p $HOME/.xschem/symbols
  mkdir -p $HOME/.xschem/lib
fi
cd $my_dir
cp xschem/xschemrc_TR10 $HOME/.xschem/xschemrc
cp xschem/title_TR10.sch $HOME/.xschem/title_TR10.sch
cp -aR ./xschem/symbols/* $HOME/.xschem/symbols/
cp -aR ./xschem/lib/TR10/* $HOME/.xschem/lib/

if [ ! -d "$HOME/.klayout/macros" ]; then
  mkdir -p $HOME/.klayout/macros
fi
cd $my_dir
cp -aR ./klayout/macros/* $HOME/.klayout/macros/
cp -f ./klayout/klayoutrc $HOME/.klayout/klayoutrc


# Finished
# --------
echo ""
echo ">>>> All done."
echo ""