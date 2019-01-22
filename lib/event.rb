require'pry'
require 'time'
class Event
	attr_accessor :start_date, :lengh, :title, :attendees

	def initialize(date, dure, titre, attends)
		@start_date = Time.parse(date)
		@lengh = dure.to_i
		@title = titre
		@attendees = attends
	end
	def postpone_24h
		@postpone = @start_date + 60 * 60 * 24
	end
	def end_date
		@end_ev = @start_date + @lengh * 60
	end
	def is_past
		@start_date < Time.now
	end
	def is_future
  		!self.is_past
	end
	def is_soon
		Time.now < @start_date || @start_date < Time.now + 60 * 30
	end
	def to_s
		puts "titre: #{@title}"
	end
end

binding.pry
puts "end of file"
#Time.parse("2010-10-31 12:00")