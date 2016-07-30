#!/usr/bin/env bash

#------------------------------------------------------------------------------
# Bash script used to build an armel v5 ARM Linux cross-compiler using
# crosstool-NG.
#
# https://github.com/doublethinkco/cpp-ethereum-cross
#
# ------------------------------------------------------------------------------
# This file is part of cpp-ethereum-cross.
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
#
# Copyright (c) 2015-2016 Kitsilano Software Inc (https://doublethink.co)
#------------------------------------------------------------------------------

DEST_DIR=$1; DEST_DIR=${DEST_DIR:="/tmp"}
./build-generic.sh \
  "xcompiler" \
  "${DEST_DIR?}" \
  "./ct-ng.sh" \
    "/home/xcompiler/ct-ng" \
    "none" \
    "arm-unknown-linux-gnueabi"

