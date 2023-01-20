class OddEvenFinder 
  def odd_even(input)
    output = input.digits.reverse
    print ( output.all?( &:even?) || output.all?(&:odd?) ? "false" : "true")
  end
end

 xyz = OddEvenFinder.new.odd_even(51)
 