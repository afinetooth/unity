class UnityCollection < Array
  
  attr_accessor :units, :range, :increment
  
  def initialize(attributes = {})
    attributes.assert_valid_keys(:units, :range, :increment)
    attributes.reverse_merge({:units => "in", :range => 0..12, :increment => 1})
    attributes.each { |k,v| self.send("#{k}=", v) }
    
    self.push(Range.new(Unit.new("#{@range.first} #{@units}"), Unit.new("#{@range.last} #{@units}")).step(Unit.new("#{@increment} #{@units}"))).flatten!
  end
  
  def closest_option_to(value)
    value = value.convert_to(@units)
    
    parts = self.partition{|v| v <= value}
    options = [ parts.first.max, parts.last.min || value ]
    
    diffs = options.map{|v| (v - value).abs}
    min = diffs.min
    i = diffs.rindex(min)
    
    options[i]
  end
  
  alias :closest_option :closest_option_to
  alias :closest_to :closest_option_to
  
end