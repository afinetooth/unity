class Unit
  
  def with_units
    to_s
  end
  
  def without_units
    to_s.split(/\s/)[0]
  end
  
end