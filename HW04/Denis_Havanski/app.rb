require_relative 'lib/student'
require_relative 'lib/mentor'
require_relative 'lib/homework'
require_relative 'lib/notification'
require_relative 'lib/journal'

student = Student.new(name: 'John', surname: 'Doe')
# p student.name, student.surname
mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')
# p mentor.name, mentor.surname
homework = Homework.new('HW01','make...', 'now!', '01.02.2021') # TODO перенести этот метод в Ментора!!!
p homework.title, homework.date_dl
homework.date_dl='03.02.2021' # TODO перенести этот метод в Ментора!!!
# p homework.date_dl

mentor.subscribe_to(student)
p mentor.students
mentor.notifications # => []

# student.submit_homework(homework_data)
# student.homeworks # => [Homework, ...]
#

#
# student.submit_homework!(homework_data)
# mentor.notifications # => [Notification, ...]
#
mentor.read_notifications!
mentor.notifications # => {}

