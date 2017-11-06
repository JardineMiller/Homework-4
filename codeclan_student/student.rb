class Student
	attr_accessor :name, :cohort #These are my "setter" methods :)

	def initialize(name, cohort)
		@name = name
		@cohort = cohort
	end

	def greeting
		return "Hi, my name is #{@name} and I am a member of E#{@cohort}."
	end

	def say_favourite_language(language)
		return "I love #{language}"
	end
end