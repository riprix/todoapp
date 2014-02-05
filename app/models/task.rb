class Task < ActiveRecord::Base
	validates :name, presence: true
	validates :deadline, presence: true
	validates :duration, presence: true, numericality: true 
end
def is_delayed?
	self.deadline < Date.today
end