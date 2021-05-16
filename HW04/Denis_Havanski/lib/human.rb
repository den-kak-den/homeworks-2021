# frozen_string_literal: true

class Human
  attr_reader :name, :surname, :status
  attr_accessor :new_notifications, :access_status

  def initialize(name: :name, surname: :surname)
    @@hw_base = []
    @name = name
    @surname = surname
    @new_notifications = {}
    @archived_notifications = {}
    @status = ''
    @access_status = ''
  end

  def about
    puts "#{status}: #{name} #{surname}"
  end

  def look_hw_base
    p "hw_base: #{@@hw_base}"
  end
end
