// Copyright (C) 2016 by rr-
//
// This file is part of arc_unpacker.
//
// arc_unpacker is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or (at
// your option) any later version.
//
// arc_unpacker is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
// General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with arc_unpacker. If not, see <http://www.gnu.org/licenses/>.

#include "dec/leaf/pak1_group/pak1_archive_decoder.h"
#include "test_support/catch.h"
#include "test_support/decoder_support.h"
#include "test_support/file_support.h"

using namespace au;
using namespace au::dec::leaf;

static const std::string dir = "tests/dec/leaf/files/pak1/";

static void do_test(
    const std::string &input_path,
    const std::vector<std::shared_ptr<io::File>> &expected_files,
    int version)
{
    Pak1ArchiveDecoder decoder;
    decoder.set_version(version);
    const auto input_file = tests::file_from_path(dir + input_path);
    const auto actual_files = tests::unpack(decoder, *input_file);
    tests::compare_files(actual_files, expected_files, true);
}

TEST_CASE("Leaf PAK1 archives", "[dec]")
{
    SECTION("Version 1")
    {
        do_test(
            "LEAFLOGO.PAK",
            {
                tests::file_from_path(dir + "leaflogo-out.c16", "leaflogo.c16"),
                tests::file_from_path(dir + "leaflogo-out.grp", "leaflogo.grp"),
            },
            1);
    }

    SECTION("Version 2")
    {
        do_test(
            "LEAFLOGO2.PAK",
            {
                tests::file_from_path(dir + "leaf-out.c16", "leaf.c16"),
                tests::file_from_path(dir + "leaf-out.grp", "leaf.grp"),
            },
            2);
    }
}
