require './lib/file_io.rb'
require './lib/translator.rb'
require './lib/braille_dictionary.rb'
require 'minitest/autorun'
require 'minitest/pride'

class TranslatorTest < Minitest::Test

  def setup
    @input = './input_test.txt'
    @output = './output_test.txt'
    @file_io = FileIo.new(@input, @output)
    @dictionary = BrailleDictionary.new()
    @translator = Translator.new(@file_io)
  end

  def test_it_exists
    assert_instance_of Translator, @translator
  end

  def test_it_has_attributes_assigned
    assert_instance_of BrailleDictionary, @translator.dictionary
    assert_equal @file_io, @translator.file_class
  end

  def test_it_can_translate_a_string_to_braille
    expected = "0.
..
.."
    result = @translator.translate_file(file_class)
    assert_equal expected, result
  end

end
