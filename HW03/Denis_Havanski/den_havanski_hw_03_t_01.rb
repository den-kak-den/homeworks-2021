def task_1(logs)

  array = logs.split("\n")
  #puts array.class
  array.each do |line|
    #binding.irb
    if line.downcase.include?("error")
      return line
    end
  end
  return ''
end

