require "./lib/file_io.rb"
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


end
