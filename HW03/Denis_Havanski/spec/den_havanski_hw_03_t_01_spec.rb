#
#
# 1. at the input of method task_1 (read "variable") is sent text:
# 10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /grid/2/messages HTTP/1.1" 200 48 0.0498
# 10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /grid/2/event HTTP/1.1" 200 - 0.2277
# 2018-04-23 20:30:42: SSL error, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSLError: System error: Undefined error: 0 - 0>
# 10.6.246.101 - - [23/Apr/2018:20:29:39 +0300] "POST /grid/2/messages HTTP/1.1" 200 48 0.0290
#
# Method task_1 should return:
#
# full text of the first line with an error (the presence of the substring error in any case)
# If the input is text that does not contain the word error, return an empty string
# Example:
#
# logs = "..." # logs information with error
#
# def task_1()
#   # your implementation goes here
# end
#
# task_1(logs) # => returns the following line:
# # 2018-04-23 20:30:42: SSL error, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSLError: System error:

require 'rspec'

require_relative '../den_havanski_hw_03_t_01'
require_relative 'spec_helper'

RSpec.describe '#task1' do

  let(:log) { [1, -4, 78421397493947923408, 34.4, 0] }
  let(:mixed_arr) { ['sadfs', 645, :symb, {1=>'1'}, true] }
  let(:empty_arr) { [] }

    context 'when log contains error' do
      it 'return full text of the 1st line with error_in_downcase' do
        # expect(number_arr.my_map).to be nil
        # expect(mixed_arr.my_map).to be nil
        # expect(empty_arr.my_map).to be nil
      end

      it 'return full text of the 1st line with error_in_UPcase' do

      end
    end

    context 'when log not_contains error' do
      it 'return empty string' do
        # new_number_arr = []
        # number_arr.my_map { |elem| new_number_arr << elem * 10 }
        # new_empty_arr = []
        # empty_arr.my_map { |elem| new_empty_arr << elem * 10 }
        # expect(new_number_arr == [10, -40, 784213974939479234080, 344, 0] && new_empty_arr == []).to be true
      end
    end
  end


