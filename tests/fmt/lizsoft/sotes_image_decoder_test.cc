#include "fmt/lizsoft/sotes_image_decoder.h"
#include "test_support/catch.hh"
#include "test_support/decoder_support.h"
#include "test_support/file_support.h"
#include "test_support/image_support.h"

using namespace au;
using namespace au::fmt::lizsoft;

static void do_test(
    const std::string &input_path, const std::string &expected_path)
{
    const SotesImageDecoder decoder;
    const auto input_file = tests::file_from_path(input_path);
    const auto expected_image = tests::image_from_path(expected_path);
    const auto actual_image = tests::decode(decoder, *input_file);
    tests::compare_images(*expected_image, actual_image);
}

TEST_CASE("LizSoft SOTES RGB sprites", "[fmt]")
{
    do_test(
        "tests/fmt/lizsoft/files/#1410",
        "tests/fmt/lizsoft/files/#1410-out.png");
}

TEST_CASE("LizSoft SOTES palette-based sprites", "[fmt]")
{
    do_test(
        "tests/fmt/lizsoft/files/#1726",
        "tests/fmt/lizsoft/files/#1726-out.png");
}
