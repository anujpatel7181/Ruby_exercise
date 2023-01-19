def convert_temperature(temp, input_scale, output_scale)
  case input_scale
  when "fahrenheit"
    temp = if output_scale == "kelvin"
            (temp - 32) * 5 / 9 + 273.15
          elsif output_scale == "celsius"
            (temp-32) * (5.0/9.0)
          end
  when "kelvin"
    temp = if output_scale == "fahrenheit"
            (temp - 273.15) * 9 / 5 + 32
          elsif output_scale == "celsius"
            (temp - 273.15)
          end
  when "celsius"
    temp = if output_scale == "fahrenheit"
            (temp*1.8) + 32
          elsif output_scale == "kelvin"
            temp + 273.15
          end
  end
  temp
end

puts "Conver Temperature".center(70,"*")
puts ""
print "Input Scale : "
input = gets.chomp.downcase
print "Output Scale : "
output = gets.chomp.downcase
print "Temperature : "
temp = gets.chomp.to_f

print convert_temperature(temp, input, output.empty? ? "celsius" : output)
