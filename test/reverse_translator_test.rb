require './lib/reverse_braille_dictionary.rb'
require './lib/reverse_translator.rb'
require './lib/file_io.rb'
require 'minitest/pride'
require 'minitest/autorun'

class ReverseTranslatorTest < Minitest::Test

  def setup
    @input_two = "./test/test_two.txt"
    @input = "./test/input_test_reverse.txt"
    @output = "./test/output_test_reverse.txt"
    @file_io = FileIo.new(@input, @output)
    @translator = ReverseTranslator.new(@file_io)
  end

  def test_it_exists

    assert_instance_of ReverseTranslator, @translator
  end

  def test_it_converts_braille_to_string
    actual = @translator.braille_to_string
    expected = "0.
..
..
"
    assert_equal expected, actual
  end

  def test_if_braille_arrays_created
    actual = @translator.get_braille_arrays
    expected = [["0."],[".."],[".."]]
    assert_equal expected, actual
  end

  def test_if_braille_arrays_are_grouped
    skip

    file_io = FileIo.new(@input_two,@output)
    translator = ReverseTranslator.new(file_io)
    actual = translator.group_braille_arrays
    expected = [[["00", "0.", ".0", "..", "00", "0.", "00", "..", "00", "0.", "00"],
  ["..", "..", "00", "..", ".0", ".0", "00", "..", "00", ".0", ".0"],
  ["..", "..", "0.", "..", "..", "0.", "..", "..", "..", "0.", ".."]]]
  assert_equal expected, actual
  end

  def test_arrays_are_being_zipped
    file_io = FileIo.new(@input_two,@output)
    translator = ReverseTranslator.new(file_io)
    actual = translator.zip_grouped_braille_arrays
    expected = [[["00", "..", ".."],
 ["0.", "..", ".."],
 [".0", "00", "0."],
 ["..", "..", ".."],
 ["00", ".0", ".."],
 ["0.", ".0", "0."],
 ["00", "00", ".."],
 ["..", "..", ".."],
 ["00", "00", ".."],
 ["0.", ".0", "0."],
 ["00", ".0", ".."]]]

    assert_equal expected, actual
  end

  def test_that_braille_is_being_translated_to_string
    file_io = FileIo.new(@input_two,@output)
    translator = ReverseTranslator.new(file_io)
    actual = translator.translate
    expected = "cat dog god"

    assert_equal expected, actual
  end











end
