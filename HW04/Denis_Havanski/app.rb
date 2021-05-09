require_relative 'lib/student'
require_relative 'lib/mentor'
require_relative 'lib/homework'
require_relative 'lib/notification'


student = Student.new(name: 'John', surname: 'Doe')
p student.name, student.surname

mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')
p mentor.name, mentor.surname

homework = Homework.new('make...', 'now!', '01.02.2021')
p homework.date_dl
homework.date_dl='00.00.0000'
p homework.date_dl

# student.submit_homework!(homework_data)
# student.homeworks # => [Homework, ...]
#
# mentor.subscribe_to(student)
# mentor.notifications # => []
#
# student.submit_homework!(homework_data)
# mentor.notifications # => [Notification, ...]
#
# mentor.read_notifications!
# mentor.notifications # => []

