
book1 = Book.new(title: "Harry Potter and the Philosopher's Stone", author: "J. K. Rowling", year: "1997", genre: "Fantasy", condition: "New")
book1.save!
puts "Generated book"

book2 = Book.new(title: "Harry Potter and the Chamber of Secrets", author: "J. K. Rowling", year: "1998", genre: "Fantasy", condition: "Slightly used")
book2.save!
puts "Generated book"

book3 = Book.new(title: "Harry Potter and the Prisoner of Azkaban", author: "J. K. Rowling", year: "1999", genre: "Fantasy", condition: "Mint condition")
book3.save!
puts "Generated book"

book4 = Book.new(title: "Harry Potter and the Goblet of Fire", author: "J. K. Rowling", year: "2000", genre: "Fantasy", condition: "Mint condition")
book4.save!
puts "Generated book"

book5 = Book.new(title: "Harry Potter and the Order of the Phoenix", author: "J. K. Rowling", year: "2003", genre: "Fantasy", condition: "Run of the mill")
book5.save!
puts "Generated book"

book6 = Book.new(title: "Harry Potter and the Half-Blood Prince", author: "J. K. Rowling", year: "2005", genre: "Fantasy", condition: "Usable")
book6.save!
puts "Generated book"

book7 = Book.new(title: "Harry Potter and the Deathly Hallows", author: "J. K. Rowling", year: "2007", genre: "Fantasy", condition: "Good to be burned on a fire")
book7.save!
puts "Generated book"

book8 = Book.new(title: "Mothering Heights", author: "Dav Pilkey", year: "2021", genre: "Graphic Novel", condition: "Good condition")
book8.save!
puts "Generated book"

book9 = Book.new(title: "A man in full", author: "Tom Wolf", year: "1998", genre: "Adventure", condition: "New")
book9.save!
puts "Generated book"

book10 = Book.new(title: "The shoes of the fisherman", author: "Morris West", year: "1963", genre: "Drama", condition: "Used")
book10.save!
puts "Generated book"

book11 = Book.new(title: "Don Quijote", author: "Miguel de Cervantes", year: "1605", genre: "Epic Novel", condition: "Readable")
book11.save!
puts "Generated book"

book12 = Book.new(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: "2013", genre: "Fiction Novel", condition: "Mint")
book12.save!
puts "Generated book"

book13 = Book.new(title: "The Catcher in the Rye", author: "J. D. Salinger", year: "1951", genre: "Young Adult Novel", condition: "Used")
book13.save!
puts "Generated book"

book14 = Book.new(title: "Ulysses", author: "James Joyce", year: "1920", genre: "Erotic Literature", condition: "Heavily used")
book14.save!
puts "Generated book"

book15 = Book.new(title: "The Call of Cthulhu", author: "H. P. Lovecraft", year: "1928", genre: "Horror", condition: "New")
book15.save!
puts "Generated book"

book16 = Book.new(title: "Jane Eyre", author: "Charlotte Brontë", year: "1847", genre: "Romance Novel", condition: "Used")
book16.save!
puts "Generated book"

book17 = Book.new(title: "To Kill a Mockingbird", author: "Harper Lee", year: "1960", genre: "Thriller", condition: "Mint condition")
book17.save!
puts "Generated book"

book18 = Book.new(title: "Anna Karenina", author: "Leo Tolstoy", year: "1878", genre: "Romance Novel", condition: "New")
book18.save!
puts "Generated book"

book19 = Book.new(title: "Invisible Man", author: "Ralph Ellison", year: "1952", genre: "Fiction", condition: "Used")
book19.save!
puts "Generated book"

book20 = Book.new(title: "Adventures of Huckleberry Finn", author: "Mark Twain", year: "1884", genre: "Fiction", condition: "Used")
book20.save!
puts "Generated book"


user1 = User.new(email: "wow121212@email.com", password: "password123123")
user1.save!
puts "generated user"

user2 = User.new(email: "amazing@email.com", password: "password123123")
user2.save!
puts "generated user"

user3 = User.new(email: "superb@email.com", password: "password123123")
user3.save!
puts "generated user"

bookstore1 = Bookstore.new(address: "123 ST", name: "Waterstones", user: user1)
bookstore1.save!
puts "generated bookstore"


bookstore2 = Bookstore.new(address: "London Way", name: "Bookshop of London", user: user2)
bookstore2.save!
puts "generated bookstore"


bookstore3 = Bookstore.new(address: "The Pentagon", name: "USA bookshop", user: user3)
bookstore3.save!
puts "generated bookstore"


physical_book1 = PhysicalBook.new(price: 10, available: "yes", book: book20, bookstore: bookstore1)
physical_book1.save!
puts "generated physical book"

physical_book2 = PhysicalBook.new(price: 9, available: "yes", book: book20, bookstore: bookstore2)
physical_book2.save!
puts "generated physical book"

physical_book3 = PhysicalBook.new(price: 12, available: "yes", book: book20, bookstore: bookstore3)
physical_book3.save!
puts "generated physical book"

physical_book4 = PhysicalBook.new(price: 20, available: "yes", book: book5, bookstore: bookstore2)
physical_book4.save!
puts "generated physical book"

physical_book5 = PhysicalBook.new(price: 22, available: "yes", book: book5, bookstore: bookstore3)
physical_book5.save!
puts "generated physical book"

physical_book6 = PhysicalBook.new(price: 22, available: "yes", book: book5, bookstore: bookstore3)
physical_book6.save!
puts "generated physical book"
