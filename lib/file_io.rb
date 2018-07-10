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

  def write_to_output(content)
    File.open(output, "w") {|f| f.write(content)}
  end







end
