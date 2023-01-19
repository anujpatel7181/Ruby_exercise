marks = {"Yash":23, "Abhi":40, "Sahil":88, "Rohan":60}
pass = []
failed = []

def passed(passing_marks,marks)
  # pass = marks.select{|key,value| value > passing_marks}.to_a
  # failed = marks.select{|key,value| value < passing_marks}.to_a
  # hash = Hash[]
  # if failed.empty?
  #   hash[:Passed] = pass
  #   puts "#{hash}"
  # elsif pass.empty?
  #   hash[:Failed] = failed
  #   puts "#{hash}"
  # else
  #   hash[:Failed] = failed
  #   hash[:Passed] = pass
  #   puts "#{hash}"
  # end
  puts marks.group_by{|key,value| (value > passing_marks ) ? "Passed": "Failed"}
end

passed 0,marks
passed 30,marks
passed 80,marks
