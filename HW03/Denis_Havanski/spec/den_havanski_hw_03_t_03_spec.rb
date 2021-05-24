require 'rspec'

require_relative '../den_havanski_hw_03_t_03'
require_relative 'spec_helper'

RSpec.describe 'task3' do
  describe '#return_action_duration' do

    let(:log_normal) do <<~INPUT
      2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
      2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
      2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
      2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
      2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
      2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
      2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event
    INPUT
    end

    let(:log_more_two_val_events) do <<~INPUT
      2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
      2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
      2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - Calling core docker event processed
      2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
      2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
      2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
      2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - Calling core inside docker_handle_event
    INPUT
    end

    let(:log_only_one_val_event) do <<~INPUT
  2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
  2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
  2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
  2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
  2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug -  with action: messages
  2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
  2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event
    INPUT
    end

    context 'when there are no valid events' do
      it 'there are no valid events at the entrance' do
        # array = ["23/Apr/2018:20:30:39 +0300 FROM: 10.6.246.103 TO: /TEST/2/MESSAGES", "23/Apr/2018:20:30:42 +0300 FROM: 10.6.246.101 TO: /TEST/2/RUN", "23/Apr/2018:20:31:39 +0300 FROM: 10.6.246.101 TO: /TEST/2/MESSAGES"]
        # expect( task2(log_normal) ).to eql(array)
      end

      it 'there is only one valid event' do

      end

      context "there are many valid events"  do
        it 'return an array of duration betwenn 1st and 2nd, 2nd and 3rd and etc' do
          # expect( task2(log_all_doesnt_match_format) ).to eql([])
        end
      end
    end
  end
end
