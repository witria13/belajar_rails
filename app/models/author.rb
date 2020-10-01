class Author < ApplicationRecord
	#author punya banyak buku
	has_many :books #karena book banyak maka ditambah s
end
