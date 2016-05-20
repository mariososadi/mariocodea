require 'faker'
require 'csv'

class Person

attr_accessor :a

  def initialize(first_name, last_name, email, phone, created_at)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
    
  end

  def data #(num)
    @a = [@first_name, @last_name, @email, @phone, @created_at]
  end

end

class PersonWriter

  def initialize(file_name, array)
    @array = array
    @file_name = file_name
  end

  def create_csv
    CSV.open(@file_name, "wb") do |csv|
    @array.each { |x| csv << x }
    end
  end

end

class PersonParser

  attr_accessor :new_a

  def initialize(file_name)
    @file_name = file_name

  end

  def people
   @a_people = CSV.read(@file_name)[0,16]
   @a_people.each{|x| puts x[0] + " " + x[1]}
   puts ""
  end

  def replace(row, first_name, last_name, email, phone, created_at)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at

    @new_a = [@first_name, @last_name, @email, @phone, @created_at]
      



      CSV.open(@file_name, "a+") do |csv|
        csv << (@new_a)
      end

  end

end

people_a =[]
15.times { person = Person.new(Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email, Faker::PhoneNumber.cell_phone, Faker::Address.country).data
  people_a << person
}



person_writer = PersonWriter.new("people.csv", people_a)
person_writer.create_csv

parser = PersonParser.new("people.csv")
parser.people
parser.replace(1, "Mario", "Sosa", "mariososadi@gmail.com", "555-5555-5555", "Mexico")
parser.people


