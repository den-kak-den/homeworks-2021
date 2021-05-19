# frozen_string_literal: true

require_relative 'human'
require_relative 'modules'

class Mentor < Human
  attr_accessor :students
  attr_writer :new_notifications
  include AllHomeworks

  def initialize(name: '', surname: '')
    super
    @status = 'mentor'
    @students = []
    @access_status = 'authorized'
    @new_notifications = {}
    @archived_notifications = {}
  end

  def new_notification(new_note)
    @new_notifications[Time.now] = new_note
  end

  def sent_notification(new_note, student)
    student.new_notification(new_note)
  end

  def subscribe_to(student)
    @students << student
    student.instance_variable_set(:@access_status, 'authorized')
    "#{student} are authorized by #{self}"
    new_notification('New student was added')
  end

  def notifications
    @new_notifications
  end

  def read_notifications!
    @new_notifications.each_pair do |key, value|
      @archived_notifications.merge!(key => value)
    end
    @new_notifications.clear
    'No more new notifications for Mentor'
  end

  def add_new_home_task(title, task, post_comment, date_dl)
    new_home_task = Homework.new(title, task, post_comment, date_dl)
    AllHomeworks.add_into_all_hw(new_home_task)
    st_number = @students.size
    for i in (0...st_number) do
    sent_notification("Mentor add new home-task #{title}", @students[i])
    end
  end

  def change_hometask(homework, changes: :hash)
    changes.each_pair do |key, value|
      homework.instance_variable_set(key, value)
      "The new #{key} of #{homework} is: #{value} \n"
    end
  end

  def about
    "#{@status}: #{@name} #{@surname}"
  end

  def look_hw_base
    return (AllHomeworks::show_all_hw)
  end

  def add_to_hw_base(elem)
    return (AllHomeworks::add_into_all_hw(elem))
  end

end
