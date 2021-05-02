def task_1(logs)

  array = logs.split("\n")
  array.each { |line| return line if line.downcase.include?("error") }
  return ''

end

