class Mentor
  attr_reader :name, :surname
  attr_writer

  def initialize(name: :name, surname: :surname)
    @name = name
    @surname = surname
  end

  def subscribe_to(student)

  end

  def notifications

  end

  def read_notifications!

  end

end
