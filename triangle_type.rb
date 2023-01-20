class TriangleType 
  def get_triangle_type(arr)
     result= ( arr.length != 3 ? 
      "not a triangle" : arr.uniq.length == 3 ? 
      "Scalene" : arr.uniq.length == 2 ? 
      "Isosceles" : arr.uniq.length == 1 ? 
      "Equilateral" : "")
  end
end

arr = [4, 4]
print TriangleType.new.get_triangle_type(arr)
