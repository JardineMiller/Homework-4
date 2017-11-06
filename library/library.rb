class Library
	attr_accessor :books

	def initialize(books)
		@books = books
	end
	
	def find_book(book_name)
		for book in @books
			return book if book[:title] == book_name
		end
	end

	def find_details(book_name)
		for book in @books
			return book[:rental_details] if book[:title] == book_name
		end
	end

	def add_new_book(book)
		@books << book
	end

	def change_details(book_name, student_name, date)
		for book in @books
			if book[:title] == book_name
				book[:rental_details][:student_name] = student_name
				book[:rental_details][:date] = date
			end
		end
	end

end