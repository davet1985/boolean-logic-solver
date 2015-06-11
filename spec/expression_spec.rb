require 'expression'

RSpec.describe Expression, "#processed" do

  it "should process the AND operator" do
    expression = Expression.new('A AND B')
    expect(expression.processed).to eq "a && b"
  end

  it "should proces the OR operator" do
    expression = Expression.new('A OR B')
    expect(expression.processed).to eq "a || b"
  end

  it "should process the NOT operator" do
    expression = Expression.new('NOT (A AND B)')
    expect(expression.processed).to eq "! (a && b)"
  end

  it "should process the XOR operator" do
    expression = Expression.new('A XOR B')
    expect(expression.processed).to eq "a ^ b"
  end

  it "should process a combination of the all operators" do
    expression = Expression.new('NOT (A AND B) OR A XOR B')
    expect(expression.processed).to eq "! (a && b) || a ^ b"
  end  

end

RSpec.describe Expression, "#raw" do

  it "should return the raw value" do
    expression = Expression.new('A AND B')
    expect(expression.raw).to eq "A AND B"
  end 

end