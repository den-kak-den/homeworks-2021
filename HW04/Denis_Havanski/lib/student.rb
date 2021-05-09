class Student
  attr_reader :name, :surname
  attr_writer :status

  def initialize(name: :name, surname: :surname)
    @name = name
    @surname = surname
    @mentors = []
    @new_notifications = {}
    @read_notifications = {}
  end

  def new_notification(new_note)
    @new_notifications[new_note] = Time.now
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

  def submit_homework(homework_data)

  end

  def submit_homework!(homework_data)

  end

  def homeworks

  end

end
