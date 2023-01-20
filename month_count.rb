class MonthCount 
  def month_counter(arr,month)
    print arr.select{ |e| e.to_s.start_with?(month)}.length
  end
end

arr1 = ["Sept 22", "Sept 21", "Oct 15"]
xyz = MonthCount.new.month_counter(arr1, "Oct")
