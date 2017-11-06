require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibraryTest < MiniTest::Test
	def setup
		@books = [
			{
				title: "lord_of_the_rings",
				rental_details: {
					student_name: "Jeff",
					date: "01/12/16"
				}
			},			
			{
				title: "the_great_gatsby",
				rental_details: {
					student_name: "Jardine",
					date: "10/05/14"
				}
			},			
			{
				title: "american_gods",
				rental_details: {
					student_name: "James",
					date: "10/11/11"
				}
			}
		]

		@new_book = {
			title: "northern_lights",
			rental_details: {
				student_name: "",
				date: ""
			}
		}

		@library = Library.new(@books)
	end

	def test_list_all_books
		assert_equal(@books, @library.books)
	end
	def test_find_book
		assert_equal(@library.books[2], @library.find_book("american_gods"))
	end
	def test_find_details
		details = @library.books[2][:rental_details]
		assert_equal(details, @library.find_details("american_gods"))
	end
	def test_add_new_book
		@library.add_new_book(@new_book)
		assert_equal(true, @library.books.include?(@new_book))
	end
	def test_change_details__book_found
		book = @books[2]
		details = book[:rental_details]

		@library.change_details("american_gods", "Luna", "25/12/17")
		assert_equal("american_gods", book[:title])
		assert_equal("Luna", details[:student_name])
		assert_equal("25/12/17", details[:date])
	end

	def test_change_details__book_not_found
		@library.change_details("wheres_wally", "Luna", "25/12/17")
		assert_equal(@books, @library.books)
	end
end