# frozen_string_literal: true

require_relative './Uladzislau_Kanapliou_hw_03_t_04'

describe '.task4' do
  it 'returns the count of letters and digits in that string' do
    logs = '2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
			2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
			2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
			2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
			2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
			2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
			2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event
			2018-04-23 17:19:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages'
    expect(task4(logs)).to eq({ letters: 320, numbers: 178 })
  end
end
