require 'rspec'

require_relative '../den_havanski_hw_03_t_02'
require_relative 'spec_helper'

RSpec.describe 'task2' do
  describe '#return_check_result' do

    let(:log_normal) do <<~INPUT
  10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
  10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
  2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>
  10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290
    INPUT
    end

    let(:log_all_doesnt_match_format) do <<~INPUT
  .6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
  10.6.24ds6.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
  2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>
  10.6.246.101 - - [23/Apr/2018-20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290
    INPUT
    end

    let(:log_no_suitable_input) { ['10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498',
      '10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277',
      '2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>',
      '10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290'] }

    context 'when log is normal' do
      it 'an array of formatted strings without errors' do
        array = ["23/Apr/2018:20:30:39 +0300 FROM: 10.6.246.103 TO: /TEST/2/MESSAGES", "23/Apr/2018:20:30:42 +0300 FROM: 10.6.246.101 TO: /TEST/2/RUN", "23/Apr/2018:20:31:39 +0300 FROM: 10.6.246.101 TO: /TEST/2/MESSAGES"]
        expect( task2(log_normal) ).to eql(array)
      end

    context "when log all doesn't match the format"  do
      it 'all no_format lines ignored (return [])' do
        expect( task2(log_all_doesnt_match_format) ).to eql([])
      end
    end

    context "when there is no suitable string at the input" do
      it 'return an empty array' do
        input = task2(log_no_suitable_input)
        error = raise_error(NoMethodError, "undefined method `split' for #{input}:Array" )
        expect( input ).to raise(error) # ????
      end
    end

    end
  end
  end
