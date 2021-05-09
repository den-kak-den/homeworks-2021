class Student
  attr_reader :name, :surname
  attr_writer :status, :new_homework, :new_notifications, :mentors

  def initialize(name: :name, surname: :surname)
    @name = name
    @surname = surname
    @mentors = []
    @new_notifications = {}
    @read_notifications = {}
    @st_homeworks = []
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
    puts "No more new notifications for Student"
    #p @read_notifications
  end

  def subscribe_to(mentor)
    @mentors << mentor
    p "@mentors = #{@mentors}"
    new_notification('New mentor was added')
  end

  def submit_homework(homework_data) # Таkе HW to doing
    #p $added_homeworks[homework_data].class
    @st_homeworks << $added_homeworks[homework_data]
    #p @mentors[0]
    sent_notification("Student took hometask HW0#{homework_data + 1} to working", @mentors[0])
    #p @st_homeworks
  end

  def submit_homework!(homework_data) # Add HW to check
    sent_notification("Student added hometask HW0#{homework_data + 1} to CHECK", @mentors[0])
  end

  def homeworks
    p @st_homeworks
  end

end
