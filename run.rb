$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require 'solver'

solver = Solver.new('data/expressions.txt', {"a" => true, "b" => false})
solver.solve
