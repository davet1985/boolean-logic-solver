require 'expression_file'
require 'csv'

class Solver

  def initialize(file_name, inputs)
    @expressions_file = ExpressionFile.new(file_name)
    @inputs = inputs
  end

  def solve
    a = @inputs["A"]
    b = @inputs["B"]
    @expressions_file.expressions.each { |e| e.result = eval(e.processed).to_s.upcase }
  end

  def output
    input_list = []
    @inputs.keys.each { |k| input_list << "#{k} = #{@inputs[k].to_s.upcase}" }
    CSV.open("data/results.csv", "wb") do |csv|
      csv << ["Given that: #{input_list.join(', ')}"]
      @expressions_file.expressions.each { |e|  csv << [e.raw, e.result] }
    end
  end

end
