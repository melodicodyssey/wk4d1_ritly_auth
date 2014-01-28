# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
	

	has_secure_password


	# before save :create_remember_token

private

	def create_remember_token
		@remember_token = CreateRandom.urlsafe_base64
	end

end