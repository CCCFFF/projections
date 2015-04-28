class Expense < ActiveRecord::Base
	validates :date, presence: true
	validates :category, presence: true
	validates :amount, presence: true
	validates :revenue, presence: true
end
