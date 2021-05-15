# frozen_string_literal: true
# check
require 'time'

TIME_REG = /^20[0-9]{2}-[0-1]\d-[0-3]\d\s[0-2]\d:[0-5]\d:[0-5]\d\.[0-9]/.freeze

def task3(logs)
  array = logs.split("\n")
  time_array = []

  array.each do |line|
    next unless line.include? 'Calling core'

    timestring = line.slice(TIME_REG)
    timestamp = Time.parse(timestring)
    time_array << timestamp
  end

  ta_size = time_array.size
  result = []
  i = 0
  while i < (ta_size - 1)
    diff = -(time_array[i] - time_array[i + 1])
    result << diff.to_s
    i += 1
  end

  if result.size == 1
    result[0]
  elsif result.empty?
    '0'
  else
    result
  end
end
