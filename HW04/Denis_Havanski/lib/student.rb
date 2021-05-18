# frozen_string_literal: true

require_relative 'human'

class Student < Human
  attr_writer :new_homework, :new_notifications, :mentors

  def initialize(name: '', surname: '')
    super
    @mentors = []
    @st_homeworks = []
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
    puts @new_notifications
  end

  def read_notifications!
    @new_notifications.each_pair do |key, value|
      @archived_notifications.merge!(key => value)
    end
    @new_notifications.clear
    puts 'No more new notifications for Student'
  end

  def subscribe_to(mentor)
    @mentors << mentor
    puts "@mentors = #{@mentors}"
    new_notification('New mentor was added')
  end

  def submit_homework(homework_data)
    @st_homeworks << $all_homeworks[homework_data]
    sent_notification("Student took hometask HW0#{homework_data + 1} to working", @mentors[0])
  end

  def submit_homework!(homework_data)
    sent_notification("Student added hometask HW0#{homework_data + 1} to CHECK", @mentors[0])
  end

  def homeworks
    puts @st_homeworks
  end

  def look_hw_base
    if @access_status == 'unauthorized'
      puts "!!! ACCESS ERROR: Your aren't added as authorized person!"
    elsif @access_status == 'authorized'
      #super
      $all_homeworks
    end
  end

  def about
    puts "#{@status}: #{@name} #{@surname}"
  end
end
