$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require 'solver'

solver = Solver.new('data/expressions.txt', {"A" => true, "B" => false})
solver.solve
solver.output
