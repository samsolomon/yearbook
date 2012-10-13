require 'open-uri'

class YearbookController < ApplicationController

	def rfd
		json_response = open("http://codemountain.com/api/students/rfd.json").read
		@rfd_students = JSON.parse(json_response)
	end

	def am
		json_response = open("http://codemountain.com/api/students/am.json").read
		@am_students = JSON.parse(json_response)
	end
	
	def pm
		json_response = open("http://codemountain.com/api/students/pm.json").read
		@pm_students = JSON.parse(json_response)
	end

	def all
		rfd_json_response = open("http://codemountain.com/api/students/rfd.json").read
		am_json_response = open("http://codemountain.com/api/students/am.json").read
		pm_json_response = open("http://codemountain.com/api/students/pm.json").read
		@all_students = JSON.parse(rfd_json_response) + JSON.parse(am_json_response) + JSON.parse(pm_json_response)
	end

end