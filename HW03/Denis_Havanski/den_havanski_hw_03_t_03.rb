#require 'date'
require 'time'
require 'pry-byebug'

TIME_REG = /^[2]0[0-9]{2}\-[0-1]\d\-[0-3]\d\s[0-2]\d\:[0-5]\d\:[0-5]\d\.[0-9]/.freeze

def task_3(logs)
  array = logs.split("\n")
  time_array = []
  array.each do |line|
    #puts "timestamp #{timestamp}"
    if line.include? "Calling core"
      puts "YES!"
      timestring = line.slice(TIME_REG)
      timestamp = Time.parse(timestring)

      time_array << timestamp
      #puts timestamp.to_time

      end
    end

    puts time_array
  #binding.pry
       res = time_array[1] - time_array[0]
    puts res

    return ''
end
