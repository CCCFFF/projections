class Revenue < ActiveRecord::Base
	validates :date, presence: true
	validates :category, presence: true
	validates :amount, presence: true
end
