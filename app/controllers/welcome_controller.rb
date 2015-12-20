class WelcomeController < ApplicationController
	def index
		@greeting = "Hi, Class!  (This message is coming from the Welcome controller.)"
	end
end
