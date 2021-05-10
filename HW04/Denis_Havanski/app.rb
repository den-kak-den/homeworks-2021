# frozen_string_literal: true

require_relative 'lib/student'
require_relative 'lib/mentor'
require_relative 'lib/homework'
require_relative 'lib/notification'
require_relative 'lib/human'

student = Student.new(name: 'John', surname: 'Doe')
student.about

mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')
mentor.about

homework = Homework.new('HW01', 'make...', 'now!', '01.02.2021')
homework.about

mentor.change_hometask(homework, changes: { :@date_dl => '16.02.2021', :@task => 'Implement your own ...' })
homework.about

student.look_hw_base

mentor.subscribe_to(student)

mentor.notifications # => {}
student.notifications

student.subscribe_to(mentor)

mentor.read_notifications!
mentor.notifications # => {}
student.read_notifications!
student.notifications

mentor.add_new_home_task('HW01', 'Add some...', 'HARD!!!', '01.02.2021')
student.notifications # => {"Mentor add new HW01"=>2021-05-09 22:15:37.533869875 +0300}

student.submit_homework(0)
student.homeworks # => [Homework, ...]
mentor.notifications
mentor.read_notifications!

student.submit_homework!(0)
mentor.notifications # => [Notification, ...]

student.look_hw_base
mentor.look_hw_base
