class Multiples 
  def array_of_multiples(num,length)
    arr = []
    multiples = length.times do  |i| 
      arr.push((i+1)*num)  
    end 
    arr
  end
end

print Multiples.new.array_of_multiples(17,6)
