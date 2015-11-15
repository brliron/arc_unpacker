#include "fmt/wild_bug/wbi_file_decoder.h"
#include "test_support/catch.hh"
#include "test_support/decoder_support.h"
#include "test_support/file_support.h"

using namespace au;
using namespace au::fmt::wild_bug;

static void do_test(
    const std::string &input_path,
    const std::string &expected_path)
{
    const WbiFileDecoder decoder;
    const auto input_file = tests::file_from_path(input_path);
    const auto expected_file = tests::file_from_path(expected_path);
    const auto actual_file = tests::decode(decoder, *input_file);
    tests::compare_files(*expected_file, *actual_file, false);
}

TEST_CASE("Wild Bug WBI script files", "[fmt]")
{
    do_test(
        "tests/fmt/wild_bug/files/wbi/START.WBI",
        "tests/fmt/wild_bug/files/wbi/START-out.dat");
}
