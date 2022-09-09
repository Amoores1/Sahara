
book1 = Book.new(title: "Harry Potter and the Philosopher's Stone", author: "J. K. Rowling", year: "1997", genre: "Fantasy", condition: "New")
book1.save!
puts "Generated book"

book2 = Book.new(title: "Harry Potter and the Chamber of Secrets", author: "J. K. Rowling", year: "1998", genre: "Fantasy", condition: "Like New")
book2.save!
puts "Generated book"

book3 = Book.new(title: "Harry Potter and the Prisoner of Azkaban", author: "J. K. Rowling", year: "1999", genre: "Fantasy", condition: "Poor")
book3.save!
puts "Generated book"

book4 = Book.new(title: "Harry Potter and the Goblet of Fire", author: "J. K. Rowling", year: "2000", genre: "Fantasy", condition: "Poor")
book4.save!
puts "Generated book"

book5 = Book.new(title: "Harry Potter and the Order of the Phoenix", author: "J. K. Rowling", year: "2003", genre: "Fantasy", condition: "Acceptable")
book5.save!
puts "Generated book"

book6 = Book.new(title: "Harry Potter and the Half-Blood Prince", author: "J. K. Rowling", year: "2005", genre: "Fantasy", condition: "Very Good")
book6.save!
puts "Generated book"

book7 = Book.new(title: "Harry Potter and the Deathly Hallows", author: "J. K. Rowling", year: "2007", genre: "Fantasy", condition: "Good")
book7.save!
puts "Generated book"

book8 = Book.new(title: "Mothering Heights", author: "Dav Pilkey", year: "2021", genre: "Graphic Novel", condition: "Good")
book8.save!
puts "Generated book"

book9 = Book.new(title: "A man in full", author: "Tom Wolf", year: "1998", genre: "Adventure", condition: "New")
book9.save!
puts "Generated book"

book10 = Book.new(title: "The shoes of the fisherman", author: "Morris West", year: "1963", genre: "Drama", condition: "Acceptable")
book10.save!
puts "Generated book"

book11 = Book.new(title: "Don Quixote", author: "Miguel de Cervantes", year: "1605", genre: "Epic Novel", condition: "Like New")
book11.save!
puts "Generated book"

book12 = Book.new(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: "2013", genre: "Classic", condition: "New")
book12.save!
puts "Generated book"

book13 = Book.new(title: "The Catcher in the Rye", author: "J. D. Salinger", year: "1951", genre: "Fiction", condition: "Very Good")
book13.save!
puts "Generated book"

book14 = Book.new(title: "Ulysses", author: "James Joyce", year: "1920", genre: "Classic", condition: "Good")
book14.save!
puts "Generated book"

book15 = Book.new(title: "The Call of Cthulhu", author: "H. P. Lovecraft", year: "1928", genre: "Horror", condition: "New")
book15.save!
puts "Generated book"

book16 = Book.new(title: "Jane Eyre", author: "Charlotte Brontë", year: "1847", genre: "Romance", condition: "Good")
book16.save!
puts "Generated book"

book17 = Book.new(title: "To Kill a Mockingbird", author: "Harper Lee", year: "1960", genre: "Fiction", condition: "New")
book17.save!
puts "Generated book"

book18 = Book.new(title: "Anna Karenina", author: "Leo Tolstoy", year: "1878", genre: "Romance", condition: "New")
book18.save!
puts "Generated book"

book19 = Book.new(title: "Invisible Man", author: "Ralph Ellison", year: "1952", genre: "Fiction", condition: "Like New")
book19.save!
puts "Generated book"

book20 = Book.new(title: "Adventures of Huckleberry Finn", author: "Mark Twain", year: "1884", genre: "Fiction", condition: "Like New")
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

user4 = User.new(email: "sinestro@email.com", password: "password123123")
user4.save!
puts "generated user"

bookstore1 = Bookstore.new(address: "439 Coldharbour Ln, London SW9 8LN, United Kingdom", name: "Book Mongers
  ", user: user1)
bookstore1.save!
puts "generated bookstore"


bookstore2 = Bookstore.new(address: "6 Broadway Market, London E8 4QJ, United Kingdom", name: "The Broadway Bookshop", user: user2)
bookstore2.save!
puts "generated bookstore"


bookstore3 = Bookstore.new(address: "187 Piccadilly, St. James's, London W1J 9LE, United Kingdom", name: "Hatchards", user: user3)
bookstore3.save!
puts "generated bookstore"

bookstore4 = Bookstore.new(address: "10 Blacklands Terrace, London SW3 2SR, United Kingdom", name: "John Sandoe", user: user4)
bookstore4.save!
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

physical_book6 = PhysicalBook.new(price: 21, available: "yes", book: book6, bookstore: bookstore4)
physical_book6.save!
puts "generated physical book"

physical_book7 = PhysicalBook.new(price: 22, available: "yes", book: book5, bookstore: bookstore3)
physical_book7.save!
puts "generated physical book"

physical_book8 = PhysicalBook.new(price: 22, available: false, book: book5, bookstore: bookstore3)
physical_book8.save!
puts "generated physical book"
