load 'customer.rb'

puts "Hello World!"

a = 123

puts "Value of variable a: #{a}"


c = Customer.new()

def c.sayHello()
  puts "Hello"
end
c.sayHello

Customer.SampleClassMethod()

c.setFirstName('Tim')
#c.setLastName('Bond')
puts c.getFirstName
puts c.getLastName

(0..26).each do |i|
  puts "#{i}"
end

class Numeric
  def plus(x)
    self.+(x)
  end
end

puts 5.plus(4)

class MyGhostClass
  def method_missing(name, *args)
    puts "#{name} was called with arguments: #{args.join(', ')}"
  end
end

m = MyGhostClass.new
m.awesome_method("one", "two") # => awesome_method was called with arguments: one,two
m.another_method("three", "four") # => another_method was called with arguments: three,four

array = ["Ruby", 123, ['a', 'b', 'c']]

puts array

hash = {"1" => 2, "2" => 3}

puts hash["1"]

permitted = true

if permitted
  puts "permitted"
else
  puts "denied"
end

puts "permitted" if permitted

def sayHello (name)
  puts "Hello #{name}!"
end

sayHello "Tim"
sayHello("Tim")

a = 1

case
  when a < 5 then puts "#{a} is less than 5"
  when a == 5 then puts "#{a} equals 5"
  when a > 5 then puts "#{a} is greater than 5"
end


array.each do |value|
  puts value
end


class Dog
  def makeSound
    puts "woof"
  end
end

class Bird
  def method_missing(method_name, *args, &block)
    puts "Bird does not support method #{method_name}"
  end
end

def animalSound(animal)
  animal.makeSound()
end

animalSound(Dog.new)

bird = Bird.new
bird.eat()

COLORS = { "black" => "000",
           "red" => "f00",
           "green" => "0f0",
           "yellow" => "ff0"}

class String
  COLORS.each do |color,code|
    define_method "in_#{color}" do
      "<span style=\"color: ##{code}\">#{self}</span>"
    end
  end
end

puts "Hello".in_green
puts "Hello".in_red

class Calculator
  def add(a, b)
    return a + b
  end
end

calc = Calculator.new
puts calc.send("add", 2, 3)

class CounterGenerator
	def CreateCounter(className)
	  eval("
		   def #{className}Counter
			  puts 'Counter for class #{className}'
		   end")
	end
end

counterGen = CounterGenerator.new
counterGen.CreateCounter("Bird")
counterGen.BirdCounter()