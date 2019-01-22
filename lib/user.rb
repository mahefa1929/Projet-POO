 require 'pry'
class User
	attr_accessor :email, :name
	 @@user_count = 0
	 @@user_list = []
	def initialize(email_to_save)
		 @email = email_to_save
		 @@user_list << @email
		 @@user_count = @@user_count + 1
 	end
 	def self.count
 		return @@user_count
 	end
 	def self.all
 		return @@user_list
 	end
 	def self.find_by_email(email)
	 	@@
	 	end 
	end 
end

binding.pry
puts "end of file"
 