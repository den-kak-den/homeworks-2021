class Mentor
  attr_reader :name, :surname, :students
  attr_writer :students

  def initialize(name: :name, surname: :surname)
    @name = name
    @surname = surname
    @students = []
    @new_notifications = {}
    @read_notifications = {}
  end

  def new_notification(new_note)
    @new_notifications[Time.now] = new_note

  end

  def sent_notification(new_note, student)
    student.new_notification(new_note)
  end

  def subscribe_to(student)
    @students << student
    new_notification('New student was added')
  end

  def notifications
    p @new_notifications
  end

  def read_notifications!
    @new_notifications.each_pair do |k, v|
      @read_notifications.merge!(k => v)
    end
    @new_notifications.clear
    puts "No more new notifications for Mentor"
    #p @read_notifications
  end

  def add_new_home_task(title, task, post_comment, date_dl)
    new_home_task = Homework.new(title, task, post_comment, date_dl)
    p new_home_task
    sent_notification("Mentor add new hometask #{title}", @students[0])
  end

end
