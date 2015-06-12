$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require 'solver'

inputs = {
  "A" => true,
  "B" => false,
  "C" => false,
  "D" => false
}

solver = Solver.new('data/expressions.txt', inputs)
solver.solve
solver.output
