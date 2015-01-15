require 'lib/formats/gfx/g00_converter'
require 'lib/virtual_file'
require 'test/test_helper'

# Unit tests for G00Converter
class G00ConverterTest < Test::Unit::TestCase
  def test_decoding_version_0
    input_data = TestHelper.get_test_file('g00/ayu_02.g00')
    expected_data = TestHelper.get_test_file('g00/ayu_02-out.png')

    file = VirtualFile.new(nil, input_data)
    G00Converter.decode!(file, {})
    actual_data = file.data

    TestHelper.compare_image(expected_data, actual_data)
  end

  def test_decoding_version_1
    input_data = TestHelper.get_test_file('g00/ayu_05.g00')
    expected_data = TestHelper.get_test_file('g00/ayu_05-out.png')

    file = VirtualFile.new(nil, input_data)
    G00Converter.decode!(file, {})
    actual_data = file.data

    TestHelper.compare_image(expected_data, actual_data)
  end

  def test_decoding_version_2
    input_data = TestHelper.get_test_file('g00/AYU_03.g00')
    expected_data = TestHelper.get_test_file('g00/AYU_03-out.png')

    file = VirtualFile.new(nil, input_data)
    G00Converter.decode!(file, {})
    actual_data = file.data

    TestHelper.compare_image(expected_data, actual_data)
    actual_meta = Image.from_boxed(actual_data, nil).meta
    expected_meta = \
    {
      regions: [{ x1: 0, y1: 0, x2: 639, y2: 479, ox: 0, oy: 0 }],
      index: [{
        origin: 12,
        size: 638_376,
        region: { x1: 0, y1: 0, x2: 639, y2: 479, ox: 0, oy: 0 },
        parts: [
          { x: 24, y: 8, tr: 0, width: 320, height: 8 },
          { x: 16, y: 16, tr: 0, width: 344, height: 8 },
          { x: 16, y: 24, tr: 0, width: 32, height: 16 },
          { x: 144, y: 24, tr: 0, width: 16, height: 8 },
          { x: 168, y: 24, tr: 0, width: 192, height: 16 },
          { x: 8, y: 32, tr: 0, width: 8, height: 8 },
          { x: 160, y: 32, tr: 0, width: 8, height: 8 },
          { x: 8, y: 40, tr: 0, width: 48, height: 8 },
          { x: 72, y: 40, tr: 0, width: 16, height: 8 },
          { x: 176, y: 40, tr: 0, width: 184, height: 40 },
          { x: 8, y: 48, tr: 0, width: 64, height: 8 },
          { x: 80, y: 48, tr: 0, width: 8, height: 8 },
          { x: 168, y: 48, tr: 0, width: 8, height: 32 },
          { x: 8, y: 56, tr: 0, width: 56, height: 16 },
          { x: 160, y: 56, tr: 0, width: 8, height: 24 },
          { x: 136, y: 64, tr: 0, width: 8, height: 8 },
          { x: 152, y: 64, tr: 0, width: 8, height: 8 },
          { x: 8, y: 72, tr: 0, width: 64, height: 8 },
          { x: 136, y: 72, tr: 0, width: 16, height: 8 },
          { x: 8, y: 80, tr: 0, width: 72, height: 8 },
          { x: 96, y: 80, tr: 0, width: 8, height: 32 },
          { x: 144, y: 80, tr: 0, width: 8, height: 8 },
          { x: 160, y: 80, tr: 0, width: 48, height: 8 },
          { x: 216, y: 80, tr: 0, width: 144, height: 8 },
          { x: 8, y: 88, tr: 0, width: 88, height: 32 },
          { x: 120, y: 88, tr: 0, width: 16, height: 8 },
          { x: 152, y: 88, tr: 0, width: 32, height: 8 },
          { x: 200, y: 88, tr: 0, width: 8, height: 8 },
          { x: 224, y: 88, tr: 0, width: 136, height: 24 },
          { x: 120, y: 96, tr: 0, width: 8, height: 16 },
          { x: 144, y: 96, tr: 0, width: 32, height: 16 },
          { x: 200, y: 96, tr: 0, width: 16, height: 8 },
          { x: 112, y: 104, tr: 0, width: 8, height: 8 },
          { x: 136, y: 104, tr: 0, width: 8, height: 8 },
          { x: 208, y: 104, tr: 0, width: 16, height: 8 },
          { x: 104, y: 112, tr: 0, width: 96, height: 8 },
          { x: 208, y: 112, tr: 0, width: 40, height: 8 },
          { x: 264, y: 112, tr: 0, width: 96, height: 56 },
          { x: 8, y: 120, tr: 0, width: 232, height: 24 },
          { x: 256, y: 120, tr: 0, width: 8, height: 8 },
          { x: 248, y: 128, tr: 0, width: 8, height: 8 },
          { x: 256, y: 136, tr: 0, width: 8, height: 8 },
          { x: 8, y: 144, tr: 0, width: 240, height: 8 },
          { x: 8, y: 152, tr: 0, width: 256, height: 8 },
          { x: 8, y: 160, tr: 0, width: 168, height: 8 },
          { x: 200, y: 160, tr: 0, width: 64, height: 8 },
          { x: 8, y: 168, tr: 0, width: 160, height: 32 },
          { x: 176, y: 168, tr: 0, width: 8, height: 8 },
          { x: 216, y: 168, tr: 0, width: 120, height: 8 },
          { x: 224, y: 176, tr: 0, width: 112, height: 16 },
          { x: 192, y: 184, tr: 0, width: 32, height: 8 },
          { x: 184, y: 192, tr: 0, width: 160, height: 32 },
          { x: 8, y: 200, tr: 0, width: 176, height: 24 },
          { x: 8, y: 224, tr: 0, width: 344, height: 16 },
          { x: 8, y: 240, tr: 0, width: 352, height: 16 },
          { x: 16, y: 256, tr: 0, width: 272, height: 8 },
          { x: 312, y: 256, tr: 0, width: 56, height: 8 },
          { x: 16, y: 264, tr: 0, width: 168, height: 8 },
          { x: 200, y: 264, tr: 0, width: 88, height: 16 },
          { x: 352, y: 264, tr: 0, width: 16, height: 8 },
          { x: 24, y: 272, tr: 0, width: 168, height: 8 },
          { x: 104, y: 280, tr: 0, width: 72, height: 8 },
          { x: 200, y: 280, tr: 0, width: 96, height: 8 },
          { x: 104, y: 288, tr: 0, width: 80, height: 8 },
          { x: 192, y: 288, tr: 0, width: 112, height: 8 },
          { x: 104, y: 296, tr: 0, width: 64, height: 8 },
          { x: 176, y: 296, tr: 0, width: 136, height: 8 },
          { x: 104, y: 304, tr: 0, width: 72, height: 8 },
          { x: 184, y: 304, tr: 0, width: 136, height: 16 },
          { x: 104, y: 312, tr: 0, width: 80, height: 8 },
          { x: 104, y: 320, tr: 0, width: 56, height: 8 },
          { x: 192, y: 320, tr: 0, width: 128, height: 8 },
          { x: 104, y: 328, tr: 0, width: 224, height: 8 },
          { x: 104, y: 336, tr: 0, width: 240, height: 24 },
          { x: 104, y: 360, tr: 0, width: 248, height: 8 },
          { x: 104, y: 368, tr: 0, width: 256, height: 8 },
          { x: 104, y: 376, tr: 0, width: 88, height: 32 },
          { x: 208, y: 376, tr: 0, width: 144, height: 24 },
          { x: 200, y: 384, tr: 0, width: 8, height: 16 },
          { x: 208, y: 400, tr: 0, width: 152, height: 8 },
          { x: 104, y: 408, tr: 0, width: 264, height: 8 },
          { x: 104, y: 416, tr: 0, width: 272, height: 8 },
          { x: 104, y: 424, tr: 0, width: 280, height: 8 },
          { x: 104, y: 432, tr: 0, width: 256, height: 8 },
          { x: 368, y: 432, tr: 0, width: 16, height: 8 },
          { x: 104, y: 440, tr: 0, width: 64, height: 8 },
          { x: 176, y: 440, tr: 0, width: 176, height: 16 },
          { x: 368, y: 440, tr: 0, width: 24, height: 32 },
          { x: 112, y: 448, tr: 0, width: 64, height: 8 },
          { x: 360, y: 448, tr: 0, width: 8, height: 24 },
          { x: 112, y: 456, tr: 0, width: 248, height: 8 },
          { x: 120, y: 464, tr: 0, width: 240, height: 8 },
          { x: 16, y: 0, tr: 1, width: 336, height: 8 },
          { x: 8, y: 8, tr: 1, width: 16, height: 8 },
          { x: 344, y: 8, tr: 1, width: 16, height: 8 },
          { x: 8, y: 16, tr: 1, width: 8, height: 16 },
          { x: 360, y: 16, tr: 1, width: 8, height: 168 },
          { x: 48, y: 24, tr: 1, width: 96, height: 8 },
          { x: 160, y: 24, tr: 1, width: 8, height: 8 },
          { x: 0, y: 32, tr: 1, width: 8, height: 224 },
          { x: 48, y: 32, tr: 1, width: 112, height: 8 },
          { x: 56, y: 40, tr: 1, width: 16, height: 8 },
          { x: 88, y: 40, tr: 1, width: 88, height: 8 },
          { x: 72, y: 48, tr: 1, width: 8, height: 8 },
          { x: 88, y: 48, tr: 1, width: 80, height: 8 },
          { x: 64, y: 56, tr: 1, width: 96, height: 8 },
          { x: 64, y: 64, tr: 1, width: 72, height: 8 },
          { x: 144, y: 64, tr: 1, width: 8, height: 8 },
          { x: 72, y: 72, tr: 1, width: 64, height: 8 },
          { x: 152, y: 72, tr: 1, width: 8, height: 16 },
          { x: 80, y: 80, tr: 1, width: 16, height: 8 },
          { x: 104, y: 80, tr: 1, width: 40, height: 8 },
          { x: 208, y: 80, tr: 1, width: 8, height: 8 },
          { x: 104, y: 88, tr: 1, width: 16, height: 16 },
          { x: 136, y: 88, tr: 1, width: 16, height: 8 },
          { x: 184, y: 88, tr: 1, width: 16, height: 16 },
          { x: 208, y: 88, tr: 1, width: 16, height: 8 },
          { x: 128, y: 96, tr: 1, width: 16, height: 8 },
          { x: 176, y: 96, tr: 1, width: 8, height: 8 },
          { x: 216, y: 96, tr: 1, width: 8, height: 8 },
          { x: 104, y: 104, tr: 1, width: 8, height: 8 },
          { x: 128, y: 104, tr: 1, width: 8, height: 8 },
          { x: 176, y: 104, tr: 1, width: 32, height: 8 },
          { x: 96, y: 112, tr: 1, width: 8, height: 8 },
          { x: 200, y: 112, tr: 1, width: 8, height: 8 },
          { x: 248, y: 112, tr: 1, width: 16, height: 8 },
          { x: 240, y: 120, tr: 1, width: 16, height: 8 },
          { x: 240, y: 128, tr: 1, width: 8, height: 8 },
          { x: 256, y: 128, tr: 1, width: 8, height: 8 },
          { x: 240, y: 136, tr: 1, width: 16, height: 8 },
          { x: 248, y: 144, tr: 1, width: 16, height: 8 },
          { x: 176, y: 160, tr: 1, width: 24, height: 8 },
          { x: 168, y: 168, tr: 1, width: 8, height: 8 },
          { x: 184, y: 168, tr: 1, width: 32, height: 8 },
          { x: 336, y: 168, tr: 1, width: 24, height: 8 },
          { x: 168, y: 176, tr: 1, width: 56, height: 8 },
          { x: 336, y: 176, tr: 1, width: 8, height: 16 },
          { x: 352, y: 176, tr: 1, width: 8, height: 8 },
          { x: 168, y: 184, tr: 1, width: 24, height: 8 },
          { x: 168, y: 192, tr: 1, width: 16, height: 8 },
          { x: 344, y: 192, tr: 1, width: 8, height: 32 },
          { x: 400, y: 200, tr: 1, width: 16, height: 8 },
          { x: 352, y: 224, tr: 1, width: 8, height: 16 },
          { x: 360, y: 240, tr: 1, width: 8, height: 8 },
          { x: 360, y: 248, tr: 1, width: 16, height: 8 },
          { x: 8, y: 256, tr: 1, width: 8, height: 16 },
          { x: 288, y: 256, tr: 1, width: 24, height: 8 },
          { x: 368, y: 256, tr: 1, width: 8, height: 24 },
          { x: 184, y: 264, tr: 1, width: 16, height: 8 },
          { x: 288, y: 264, tr: 1, width: 8, height: 8 },
          { x: 312, y: 264, tr: 1, width: 40, height: 8 },
          { x: 8, y: 272, tr: 1, width: 16, height: 8 },
          { x: 192, y: 272, tr: 1, width: 8, height: 16 },
          { x: 288, y: 272, tr: 1, width: 16, height: 8 },
          { x: 352, y: 272, tr: 1, width: 16, height: 8 },
          { x: 16, y: 280, tr: 1, width: 88, height: 8 },
          { x: 176, y: 280, tr: 1, width: 16, height: 8 },
          { x: 296, y: 280, tr: 1, width: 16, height: 8 },
          { x: 96, y: 288, tr: 1, width: 8, height: 160 },
          { x: 184, y: 288, tr: 1, width: 8, height: 8 },
          { x: 304, y: 288, tr: 1, width: 16, height: 8 },
          { x: 168, y: 296, tr: 1, width: 8, height: 8 },
          { x: 312, y: 296, tr: 1, width: 16, height: 8 },
          { x: 176, y: 304, tr: 1, width: 8, height: 8 },
          { x: 320, y: 304, tr: 1, width: 8, height: 16 },
          { x: 160, y: 320, tr: 1, width: 32, height: 8 },
          { x: 320, y: 320, tr: 1, width: 16, height: 8 },
          { x: 328, y: 328, tr: 1, width: 16, height: 8 },
          { x: 344, y: 336, tr: 1, width: 8, height: 24 },
          { x: 352, y: 360, tr: 1, width: 8, height: 8 },
          { x: 360, y: 368, tr: 1, width: 8, height: 16 },
          { x: 192, y: 376, tr: 1, width: 16, height: 8 },
          { x: 352, y: 376, tr: 1, width: 8, height: 16 },
          { x: 192, y: 384, tr: 1, width: 8, height: 16 },
          { x: 352, y: 392, tr: 1, width: 16, height: 8 },
          { x: 192, y: 400, tr: 1, width: 16, height: 8 },
          { x: 360, y: 400, tr: 1, width: 16, height: 8 },
          { x: 368, y: 408, tr: 1, width: 16, height: 8 },
          { x: 376, y: 416, tr: 1, width: 16, height: 8 },
          { x: 384, y: 424, tr: 1, width: 8, height: 16 },
          { x: 360, y: 432, tr: 1, width: 8, height: 16 },
          { x: 168, y: 440, tr: 1, width: 8, height: 8 },
          { x: 352, y: 440, tr: 1, width: 8, height: 16 },
          { x: 392, y: 440, tr: 1, width: 8, height: 40 },
          { x: 104, y: 448, tr: 1, width: 8, height: 16 },
          { x: 104, y: 464, tr: 1, width: 16, height: 8 },
          { x: 120, y: 472, tr: 1, width: 272, height: 8 }]
      }]
    }
    assert_equal(expected_meta, actual_meta)
  end
end
