# frozen_string_literal: true

require_relative 'human'

class Mentor < Human
  attr_accessor :students
  attr_writer :new_notifications

  def initialize(name: '', surname: '')
    super
    @status = 'mentor'
    @students = []
    $added_homeworks = []
    @access_status = 'authorized'
  end

  def new_notification(new_note)
    @new_notifications[Time.now] = new_note
  end

  def sent_notification(new_note, student)
    student.new_notification(new_note)
  end

  def subscribe_to(student)
    @students << student
    student.instance_variable_set(:@access_status, 'authorized')
    puts "#{student} are authorized by #{self}"
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
    puts 'No more new notifications for Mentor'
  end

  def add_new_home_task(title, task, post_comment, date_dl)
    new_home_task = Homework.new(title, task, post_comment, date_dl)
    p new_home_task
    $added_homeworks << new_home_task
    sent_notification("Mentor add new home-task #{title}", @students[0])
  end

  def change_hometask(homework, changes: :hash)
    changes.each_pair do |k, v|
      homework.instance_variable_set(k, v)
      puts "The new #{k} of #{homework} is: #{v} \n"
    end
  end
end
