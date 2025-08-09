module Port
  IDENTIFIER = :PALE
  TERMINAL_A = ['OIL', 'GAS']

  def self.get_identifier(city)
    city.slice(0,4).upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    return :A if TERMINAL_A.include?(ship_identifier.to_s.slice(0,3))
    :B
  end
end
