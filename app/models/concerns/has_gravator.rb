module HasGravator
	def gravator
		"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
	end
end