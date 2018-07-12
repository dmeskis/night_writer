require 'pry'
require_relative 'reverse_translator'
require_relative 'reverse_braille_dictionary'
require_relative 'file_io'

if ARGV.length != 2
  puts "We need exactly two parameters. Exiting program."
  exit;
end

file_io = FileIo.new(ARGV[0], ARGV[1])
dictionary = ReverseBrailleDictionary.new()
translator = ReverseTranslator.new(file_io)

content = translator.translate
file_io.write_to_output(content)

file_length = file_io.open.size / 6
puts "Created #{ARGV[1]} containing #{file_length} characters"
