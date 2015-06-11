require 'expression'

class ExpressionFile

  attr_accessor :file_name, :expressions

  def initialize(file_name)
    @file_name = file_name
    @expressions = Array.new
    read_file
  end

  def read_file
    File.foreach(file_name) { |l| process_line(l) }
  end

  def process_line(line)
    line.gsub!(/\s$/, '')
    expressions << Expression.new(line)
  end

end