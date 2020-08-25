class Employee < ApplicationRecord
	include Searchable

	validates :phoneNumber, presence: true, numericality: {only_integer: true}
	validates_date :date_of_birth, before: lambda { Date.current }

	validate :verify_unique_email?
	validate :verify_image?


	def verify_unique_email?
		return false if Employee.where(email: self.email).any?
	end

	def verify_image?
		file_extension = File.extname(emp_image)
		return false if file_extension!= ".jpg" || file_extension!= ".png"
	end
end
