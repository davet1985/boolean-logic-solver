class Expression

  attr_accessor :raw, :result

  def initialize(raw)
    @raw = raw
  end

  def processed
    processed = raw.downcase
    processed.gsub!("and", "&&")
    processed.gsub!("xor", "^")
    processed.gsub!("or", "||")
    processed.gsub!("not", "!")
    processed
  end

end