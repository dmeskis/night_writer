require "./lib/file_io.rb"
require "./lib/translator.rb"
require "minitest/pride"
require "minitest/autorun"
require"pry"


class FileIoTest < Minitest::Test
  attr_reader :input, :output
  def setup
    @input = "./test/input_test.txt"
    @output = "./test/output_test.txt"

  end


  def test_if_exist
    file_io = FileIo.new(@input,@output)

    assert_instance_of FileIo, file_io
  end

  def test_if_file_open
    file_io = FileIo.new(@input,@output)
    file_content = file_io.open
    # binding.pry
    assert file_content
  end

  def test_if_file_is_read
    file_io = FileIo.new(@input,@output)
    file_content = file_io.read.chomp

    assert_equal "a", file_content
  end

  def test_can_write_to_output
    file_io = FileIo.new(@input,@output)
    translator = Translator.new(file_io)
    file_io.write_to_output
    expected = "0.
    ..
    .."
    result = @output

    assert_equal expected, result
  end


end
