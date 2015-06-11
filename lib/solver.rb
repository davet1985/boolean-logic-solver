require 'expression_file'

class Solver

  def initialize(file_name, inputs)
    @expressions_file = ExpressionFile.new(file_name)
    @inputs = inputs
  end

  def solve
    a = @inputs["a"]
    b = @inputs["b"]
    @expressions_file.expressions.each { |e|
      result = eval(e.processed).to_s.upcase
      puts "#{e.raw} = #{result}"
    }
  end

end
