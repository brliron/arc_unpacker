#include "fmt/leaf/p16_audio_decoder.h"
#include "test_support/catch.hh"
#include "test_support/decoder_support.h"
#include "test_support/file_support.h"

using namespace au;
using namespace au::fmt::leaf;

static void do_test(
    const std::string &input_path, const std::string &expected_path)
{
    const P16AudioDecoder decoder;
    const auto input_file = tests::zlib_file_from_path(input_path);
    const auto expected_file = tests::zlib_file_from_path(expected_path);
    const auto actual_file = tests::decode(decoder, *input_file);
    tests::compare_files(*expected_file, *actual_file, false);
}

TEST_CASE("Leaf P16 audio", "[fmt]")
{
    do_test(
        "tests/fmt/leaf/files/p16/PCM01-zlib.P16",
        "tests/fmt/leaf/files/p16/PCM01-zlib-out.wav");
}
