require_relative 'den_havanski_hw_03_t_01'
require_relative 'den_havanski_hw_03_t_02'
require_relative 'den_havanski_hw_03_t_03'
require_relative 'den_havanski_hw_03_t_04'


logs = <<~INPUT
  10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /grid/2/messages HTTP/1.1" 200 48 0.0498
  10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /grid/2/event HTTP/1.1" 200 - 0.2277
  2018-04-23 20:30:42: SSL error, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSLError: System error: Undefined error: 0 - 0>
  10.6.246.101 - - [23/Apr/2018:20:29:39 +0300] "POST /grid/2/messages HTTP/1.1" 200 48 0.0290
INPUT

puts "----- Task_1 -----"
puts task_1(logs)

#######################

logs = <<~INPUT
  10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
  10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
  2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>
  10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290
INPUT

puts "\n----- Task_2 -----"
puts task_2(logs)

#######################

puts "\n----- Task_4 -----"
puts task_4("hel2!lo")
puts task_4("wicked .. !")
puts task_4("LJjom&*&odfщоыо/?<вадоыва938984:*(Щьдьждб*&(*KJLMLM<:<")