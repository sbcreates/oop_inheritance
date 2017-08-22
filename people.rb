#4 Create a parent Person class that contains the attribute name and an initializer to set the name.
#5 Both the instructor and the student should also be able to do a greeting, like "Hi, my name is #{name}". Where's the best place to put this common method?
class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}."
  end

end

#1 Let's start by creating two classes: one called Student and another called Instructor.

class Student < Person

#2 The student class has a method called learn that outputs "I get it!".
  def learn
    puts "I get it!"
  end

  def greeting
    super
  end

end


class Instructor < Person

#3 The instructor class has a method called teach that outputs "Everything in Ruby is an Object".
  def teach
    puts "Everything in Ruby is an Object."
  end

  def greeting
    super
  end

end

#6 Create an instance of Instructor whose name is "Nadia" and call her greeting.
nadia = Instructor.new("Nadia")
nadia.greeting

#7 Create an instance of Student whose name is "Chris" and call his greeting.
chris = Student.new("Chris")
chris.greeting

#8 Call the teach method on your instructor instance and call the learn method on your student. Next, call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why.
nadia.teach
chris.teach

# teach is an instance method for the class Instructor and therefore cannot be used by the Student class.
