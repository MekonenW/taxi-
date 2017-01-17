class Post < ApplicationRecord
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :name, :email, :phone, :pick_up_location, :destination, :pick_up_date, :pick_up_time,  presence: true
	# validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	
	def thank_you
		ReservationMailer.thank_you(self).deliver
		redirect_to 'show_path'
	end
end
