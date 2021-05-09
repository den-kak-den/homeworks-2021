require_relative 'lib/student'
require_relative 'lib/mentor'
require_relative 'lib/homework'
require_relative 'lib/notification'
require_relative 'lib/journal'

student = Student.new(name: 'John', surname: 'Doe')
# p student.name, student.surname
mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')
# p mentor.name, mentor.surname
# homework = Homework.new('HW01','make...', 'now!', '01.02.2021') # перенести этот метод в Ментора!!!
#p homework.title, homework.date_dl
#homework.date_dl='03.02.2021' # TODO перенести этот метод в Ментора!!!
# p homework.date_dl

mentor.subscribe_to(student)
p mentor.students
mentor.notifications # => {}
student.notifications

# student.submit_homework(homework_data)
# student.homeworks # => [Homework, ...]
#

#
# student.submit_homework!(homework_data)
# mentor.notifications # => [Notification, ...]
#
mentor.read_notifications!
mentor.notifications # => {}
student.read_notifications!
student.notifications

mentor.add_new_home_task('HW01', 'Add some...', 'HARD!!!', '01.02.2021')
student.notifications # => {"Mentor add new hometask HW01"=>2021-05-09 22:15:37.533869875 +0300}


