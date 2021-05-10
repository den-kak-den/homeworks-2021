# frozen_string_literal: true

require_relative 'lib/student'
require_relative 'lib/mentor'
require_relative 'lib/homework'
require_relative 'lib/notification'
require_relative 'lib/human'

student = Student.new(name: 'John', surname: 'Doe')
# puts "#{student.status}: #{student.name} #{student.surname}"
student.about
mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')
mentor.about
# p mentor.status, mentor.name, mentor.surname
homework = Homework.new('HW01', 'make...', 'now!', '01.02.2021') # перенести этот метод в Ментора!!!
# p homework.title, homework.date_dl
homework.about
# p homework.instance_variables
mentor.change_hometask(homework, changes: { :@date_dl => '16.02.2021', :@task => 'Implement your own ...' })
# homework.date_dl='03.02.2021' #   этот метод в Ментора!!!
# p homework.date_dl
homework.about
student.look_hw_base
mentor.subscribe_to(student)
# p mentor.students
mentor.notifications # => {}
student.notifications

student.subscribe_to(mentor)

mentor.read_notifications!
mentor.notifications # => {}
student.read_notifications!
student.notifications

mentor.add_new_home_task('HW01', 'Add some...', 'HARD!!!', '01.02.2021')
student.notifications # => {"Mentor add new hometask HW01"=>2021-05-09 22:15:37.533869875 +0300}

student.submit_homework(0)
student.homeworks # => [Homework, ...]
mentor.notifications
mentor.read_notifications!
student.submit_homework!(0)
mentor.notifications # => [Notification, ...]

puts '#######################################'

student.look_hw_base
mentor.look_hw_base
