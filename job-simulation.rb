# should we use a stack or a queue?  Due - sunday evening/goal last case scenario/tuesday


# A company has six hiring positions with more people wanting jobs than the
# number of available positions.  The company managers decide in order to give
# more people an opportunity to make money; they will allow people to work in
# three-month intervals. The first five people on the waiting list will be hired
# in the order that they are on the waiting list.  The first six people will
# keep these positions for three months.  At the end of three months, the
# manager will roll a dice to determine the number of people who will lose their
# jobs. The company will use the policy of last-hired-first-fired.  For example,
# if the dice roll is 3, the last 3 people hired will lose their jobs to the
# first 3 people on the waiting list. People losing their jobs will be placed on
# the back of the waiting list in the order that they are fired. This process
# will continue for every three-month interval.
require 'Faker'
require './Stack.rb'
require './Queue.rb'

class Manager
  def initialize (name)
    @name = name
  end

  def hire(num, waiting_list, ees)
    hired = []
    hired << waiting_list.dequeue(num)
    puts "size of hired"
    puts hired
    hired.each do |i|
      ees.push(i)
    end
    puts "size of ees"
    puts ees.size
  end

  def fire(num, waiting_list, ees)
    fired = []
    fired << ees.pop(num)
    puts "size of fired"
    puts fired
    waiting_list.enqueue(fired)
    puts "size of waitlist after firing"
    puts waiting_list.size
  end

  def three_month_pass
    dice_roll = rand(6)
  end

end

class Worker

  def initialize (name)
    @name = name
  end

end

# creating my stack and queue - employee list and wait list
ees = Stack.new
waiting_list = Queue.new

# initializing a manager:
m1 = Manager.new("Brandi")

# initializing new workers and adding them to the wait list
waiting_list.enqueue(Worker.new("Bob"))

a_workers = ["Sam", "Shirley", "Margaret", "Geoff", "Wanda", "Angi", "Tom", "Frank", "Cindy", "Frank"]

a_workers.each do |name|
  waiting_list.enqueue(Worker.new(name))
end

ees.push("sam")
puts ees.size
# puts "I hired you"
# puts m1.hire(6, waiting_list, ees)
# puts "now your fired"
# puts m1.fire(3, ees, waiting_list)

# puts ees.size

# puts waiting_list.size
