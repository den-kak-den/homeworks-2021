
require 'time'

TIME_REG = /^[2]0[0-9]{2}\-[0-1]\d\-[0-3]\d\s[0-2]\d\:[0-5]\d\:[0-5]\d\.[0-9]/.freeze

def task_3(logs)
  array = logs.split("\n")
  time_array = []

  array.each do |line|
    if line.include? "Calling core"
      timestring = line.slice(TIME_REG)
      timestamp = Time.parse(timestring)
      time_array << timestamp
      end
  end

  ta_size = time_array.size
  result = []
  i = 0
  while i < (ta_size - 1)
    diff = -(time_array[i] - time_array[i + 1])
    result << diff.to_s
    i += 1
    #puts i
  end

  if result.size == 1
    return result[0]
  elsif result.empty?
    return "0"
  else
    return result
  end

end
