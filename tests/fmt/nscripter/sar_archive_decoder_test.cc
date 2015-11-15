#include "fmt/nscripter/sar_archive_decoder.h"
#include "test_support/catch.hh"
#include "test_support/decoder_support.h"
#include "test_support/file_support.h"

using namespace au;
using namespace au::fmt;
using namespace au::fmt::nscripter;

TEST_CASE("NScripter SAR archives", "[fmt]")
{
    const std::vector<std::shared_ptr<File>> expected_files
    {
        tests::stub_file("abc.txt", "123"_b),
        tests::stub_file("dir/another.txt", "AAAAAAAAAAAAAAAA"_b),
    };

    const SarArchiveDecoder decoder;
    const auto input_file = tests::file_from_path(
        "tests/fmt/nscripter/files/sar/test.sar");
    const auto actual_files = tests::unpack(decoder, *input_file);
    tests::compare_files(expected_files, actual_files, true);
}
