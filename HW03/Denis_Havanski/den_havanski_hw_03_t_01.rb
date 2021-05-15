# frozen_string_literal: true
# check
def task1(logs)
  array = logs.split("\n")
  array.each { |line| return line if line.downcase.include?('error') }
  ''
end
