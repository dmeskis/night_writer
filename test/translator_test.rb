require './lib/translator.rb'
require 'minitest/autorun'
require 'minitest/pride'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new("", "")

    assert_instance_of Translator, translator
  end

  def

  end

end
