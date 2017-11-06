require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < Minitest::Test
		def setup
			@student = Student.new("Jardine", 17)
		end

		def test_student_name
			assert_equal("Jardine", @student.name)
		end

		def test_student_cohort
			assert_equal(17, @student.cohort)
		end

		def test_set_name
			@student.name = "Jeremy"
			assert_equal("Jeremy", @student.name)
		end

		def test_set_cohort
			@student.cohort = 18
			assert_equal(18, @student.cohort)
		end

		def test_greeting
			assert_equal("Hi, my name is Jardine and I am a member of E17.", @student.greeting)
		end

		def test_say_favourite_language
			fav_language = @student.say_favourite_language("Ruby")
			assert_equal("I love Ruby", fav_language)
		end
end