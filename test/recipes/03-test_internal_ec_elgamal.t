#! /usr/bin/env perl
# Copyright 2019 The OpenSSL Project Authors. All Rights Reserved.
#
# Licensed under the Apache License 2.0 (the "License").  You may not use
# this file except in compliance with the License.  You can obtain a copy
# in the file LICENSE in the source distribution or at
# https://www.openssl.org/source/license.html

use strict;
use OpenSSL::Test;              # get 'plan'
use OpenSSL::Test::Simple;
use OpenSSL::Test::Utils;

setup("test_internal_ec_elgamal");

plan skip_all => "This test is unsupported in a no-ec_elgamal build"
    if disabled("ec") or disabled("ec_elgamal");

simple_test("test_internal_ec_elgamal", "ec_elgamal_internal_test");
