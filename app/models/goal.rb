class Goal < ActiveRecord::Base
	validates :state_date, presence: true
	validates :end_date, presence: true
	validates :description, presence: true
end
