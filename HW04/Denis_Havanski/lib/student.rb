# frozen_string_literal: true

require_relative 'human'
require_relative 'modules'

class Student < Human
  attr_writer :new_homework, :new_notifications, :mentors
  include AllHomeworks

  def initialize(name: '', surname: '')
    super
    @mentors = []
    @student_homeworks = []
    @status = 'student'
    @access_status = 'unauthorized'
    @new_notifications = {}
    @archived_notifications = {}
  end

  def new_notification(new_note)
    @new_notifications[Time.now] = new_note
  end

  def sent_notification(new_note, mentor)
    mentor.new_notification(new_note)
  end

  def notifications
    @new_notifications
  end

  def read_notifications!
    @new_notifications.each_pair do |key, value|
      @archived_notifications.merge!(key => value)
    end
    @new_notifications.clear
    'No more new notifications for Student'
  end

  def subscribe_to(mentor)
    @mentors << mentor
    new_notification('New mentor was added')
    "@mentors = #{@mentors}"
  end

  def submit_homework(homework_data)
    @student_homeworks << (AllHomeworks.show_all_hw)[homework_data - 1]
    sent_notification("Student took hometask HW0#{homework_data} to working", @mentors[0])
  end

  def submit_homework!(homework_data)
    sent_notification((homework_data < 10) ? ("Student added hometask HW0#{homework_data} to CHECK") : ("Student added hometask HW#{homework_data} to CHECK"), @mentors[0])
  end

  def homeworks
    @student_homeworks
  end

  def show_hw_base
    return AllHomeworks.show_all_hw
  end

  def look_hw_base
    if @access_status == 'unauthorized'
      "!!! ACCESS ERROR: Your aren't added as authorized person!"
    elsif @access_status == 'authorized'
      AllHomeworks.show_all_hw
    end
  end

  def about
    "#{@status}: #{@name} #{@surname}"
  end
end
