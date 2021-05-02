TIME_REG = /^[2]0[0-9]{2}\-[0-1]\d\-[0-3]\d\s[0-2]\d\:[0-5]\d\:[0-5]\d\.[0-9]/.freeze


def task_3(logs)
  array = logs.split("\n")
  array.each do |timestamp|
    #puts "timestamp #{timestamp}"
    if timestamp.include? "Calling core"
      puts "YES!"
      timestamp = logs.slice(TIME_REG)
      puts timestamp
    end
    end
    return ''
end
