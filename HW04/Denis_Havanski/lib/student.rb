class Student
  attr_reader :name, :surname
  attr_writer :status

  def initialize(name: :name, surname: :surname)
    @name = name
    @surname = surname
  end

  def submit_homework(homework_data)

  end

  def submit_homework!(homework_data)

  end

  def homeworks

  end

end
