require "pry"


class FileIo
  attr_reader :input, :output

  def initialize(input,output)
    @input = input
    @output = output
  end


  def open
    File.open(input)

  end

  def read
    f = open
    f.read()
  end

  def write_to_output
    t = Translator.new(self)
    line_1 = t.collect_line_array(0)
    line_2 = t.collect_line_array(1)
    line_3 = t.collect_line_array(2)
    f = File.open(output, "w")
    line_1.each {|line| f.print(line)}
    f.print("\n")
    line_2.each {|line| f.print(line)}
    f.print("\n")
    line_3.each {|line| f.print(line)}
    f.close
  end







end
