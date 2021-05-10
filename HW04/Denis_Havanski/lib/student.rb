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
  end

  def new_notification(new_note)
    @new_notifications[Time.now] = new_note
  end

  def sent_notification(new_note, mentor)
    mentor.new_notification(new_note)
  end

  def notifications
    p @new_notifications
  end

  def read_notifications!
    @new_notifications.each_pair do |k, v|
      @read_notifications.merge!(k => v)
    end
    @new_notifications.clear
    puts 'No more new notifications for Student'
    # p @read_notifications
  end

  def subscribe_to(mentor)
    @mentors << mentor
    p "@mentors = #{@mentors}"
    new_notification('New mentor was added')
  end

  def submit_homework(homework_data)
    @st_homeworks << $added_homeworks[homework_data]
    sent_notification("Student took hometask HW0#{homework_data + 1} to working", @mentors[0])
  end

  def submit_homework!(homework_data)
    sent_notification("Student added hometask HW0#{homework_data + 1} to CHECK", @mentors[0])
  end

  def homeworks
    p @st_homeworks
  end

  def look_hw_base
    if @mentors.empty?
      puts "!!! ACCESS ERROR: Your aren't added as authorized person. "
    else
      super
    end
  end
end
