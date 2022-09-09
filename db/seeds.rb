require "open-uri"

book1 = Book.new(title: "Harry Potter and the Philosopher's Stone", author: "J. K. Rowling", year: "1997", genre: "Fantasy", condition: "New")
book1.photo.attach(io: URI.open("https://kbimages1-a.akamaihd.net/b705120b-930c-4bda-8652-103b85a0dd90/353/569/90/False/harry-potter-and-the-philosopher-s-stone-5.jpg"), filename: "david.jpg", content_type: "image/jpg")
book1.save!
puts "Generated book"

book2 = Book.new(title: "Harry Potter and the Chamber of Secrets", author: "J. K. Rowling", year: "1998", genre: "Fantasy", condition: "Like New")
book2.photo.attach(io: URI.open("https://m.media-amazon.com/images/M/MV5BMjE0YjUzNDUtMjc5OS00MTU3LTgxMmUtODhkOThkMzdjNWI4XkEyXkFqcGdeQXVyMTA3MzQ4MTc0._V1_.jpg"), filename: "david.jpg", content_type: "image/jpg")
book2.save!
puts "Generated book"

book3 = Book.new(title: "Harry Potter and the Prisoner of Azkaban", author: "J. K. Rowling", year: "1999", genre: "Fantasy", condition: "Poor")
book3.photo.attach(io: URI.open("https://pictures.abebooks.com/isbn/9780747542155-es.jpg"), filename: "david.jpg", content_type: "image/jpg")
book3.save!
puts "Generated book"

book4 = Book.new(title: "Harry Potter and the Goblet of Fire", author: "J. K. Rowling", year: "2000", genre: "Fantasy", condition: "Poor")
book4.photo.attach(io: URI.open("https://target.scene7.com/is/image/Target/GUEST_a610dac0-dcf5-49e1-b857-64febdeccd71?wid=488&hei=488&fmt=pjpeg"), filename: "david.jpg", content_type: "image/jpg")
book4.save!
puts "Generated book"

book5 = Book.new(title: "Harry Potter and the Order of the Phoenix", author: "J. K. Rowling", year: "2003", genre: "Fantasy", condition: "Acceptable")
book5.photo.attach(io: URI.open("https://pictures.abebooks.com/isbn/9780439358064-es.jpg"), filename: "david.jpg", content_type: "image/jpg")
book5.save!
puts "Generated book"

book6 = Book.new(title: "Harry Potter and the Half-Blood Prince", author: "J. K. Rowling", year: "2005", genre: "Fantasy", condition: "Very Good")
book6.photo.attach(io: URI.open("https://static.wikia.nocookie.net/harrypotter/images/4/45/Harry_and_Dumbledore_HBPF_promo.jpg/revision/latest"), filename: "david.jpg", content_type: "image/jpg")
book6.save!
puts "Generated book"

book7 = Book.new(title: "Harry Potter and the Deathly Hallows", author: "J. K. Rowling", year: "2007", genre: "Fantasy", condition: "Good")
book7.photo.attach(io: URI.open("https://i.pinimg.com/originals/80/f1/f7/80f1f756446438e2a17eecca6d2ec549.jpg"), filename: "david.jpg", content_type: "image/jpg")
book7.save!
puts "Generated book"

book8 = Book.new(title: "Mothering Heights", author: "Dav Pilkey", year: "2021", genre: "Graphic Novel", condition: "Good")
book8.photo.attach(io: URI.open("https://media.karousell.com/media/photos/products/2021/3/28/dog_man_mothering_heights_1616917893_f8c7c81f.jpg"), filename: "david.jpg", content_type: "image/jpg")
book8.save!
puts "Generated book"

book9 = Book.new(title: "A man in full", author: "Tom Wolf", year: "1998", genre: "Adventure", condition: "New")
book9.photo.attach(io: URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/hostedimages/1612539063i/30818026._SX540_.jpg"), filename: "david.jpg", content_type: "image/jpg")
book9.save!
puts "Generated book"

book10 = Book.new(title: "The shoes of the fisherman", author: "Morris West", year: "1963", genre: "Drama", condition: "Acceptable")
book10.photo.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/en/a/a1/TheShoesOfTheFisherman.jpg"), filename: "david.jpg", content_type: "image/jpg")
book10.save!
puts "Generated book"

book11 = Book.new(title: "Don Quixote", author: "Miguel de Cervantes", year: "1605", genre: "Epic Novel", condition: "Like New")
book11.photo.attach(io: URI.open("https://www.bookcenter.es/imagenes/9788466/978846675504.JPG"), filename: "david.jpg", content_type: "image/jpg")
book11.save!
puts "Generated book"

book12 = Book.new(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: "2013", genre: "Classic", condition: "New")
book12.photo.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg"), filename: "david.jpg", content_type: "image/jpg")
book12.save!
puts "Generated book"

book13 = Book.new(title: "The Catcher in the Rye", author: "J. D. Salinger", year: "1951", genre: "Fiction", condition: "Very Good")
book13.photo.attach(io: URI.open("https://cdn.agapea.com/Time-Warner-Book-Group/The-Catcher-in-the-Rye-i1n429316.jpg"), filename: "david.jpg", content_type: "image/jpg")
book13.save!
puts "Generated book"

book14 = Book.new(title: "Ulysses", author: "James Joyce", year: "1920", genre: "Classic", condition: "Good")
book14.photo.attach(io: URI.open("https://kbimages1-a.akamaihd.net/78b8e95a-e35c-4cfd-934c-9ca144006f91/1200/1200/False/ulysses-214.jpg"), filename: "david.jpg", content_type: "image/jpg")
book14.save!
puts "Generated book"

book15 = Book.new(title: "The Call of Cthulhu", author: "H. P. Lovecraft", year: "1928", genre: "Horror", condition: "Acceptable")
book15.photo.attach(io: URI.open("https://kbimages1-a.akamaihd.net/0a4c72d9-d517-4d57-89da-b633edcefb23/1200/1200/False/the-call-of-cthulhu-and-other-stories-3.jpg"), filename: "david.jpg", content_type: "image/jpg")
book15.save!
puts "Generated book"

book16 = Book.new(title: "Jane Eyre", author: "Charlotte Brontë", year: "1847", genre: "Romance", condition: "Good")
book16.photo.attach(io: URI.open("https://imagessl7.casadellibro.com/a/l/t5/77/9788468200477.jpg"), filename: "david.jpg", content_type: "image/jpg")
book16.save!
puts "Generated book"

book17 = Book.new(title: "To Kill a Mockingbird", author: "Harper Lee", year: "1960", genre: "Fiction", condition: "Acceptable")
book17.photo.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/1200px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg"), filename: "david.jpg", content_type: "image/jpg")
book17.save!
puts "Generated book"

book18 = Book.new(title: "Anna Karenina", author: "Leo Tolstoy", year: "1878", genre: "Romance", condition: "Like New")
book18.photo.attach(io: URI.open("https://www.storytel.com/images/e/640x640/0002162552.jpg"), filename: "david.jpg", content_type: "image/jpg")
book18.save!
puts "Generated book"

book19 = Book.new(title: "Invisible Man", author: "Ralph Ellison", year: "1952", genre: "Fiction", condition: "Acceptable")
book19.photo.attach(io: URI.open("https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781476797496/the-invisible-man-9781476797496_hr.jpg"), filename: "david.jpg", content_type: "image/jpg")
book19.save!
puts "Generated book"

book20 = Book.new(title: "Adventures of Huckleberry Finn", author: "Mark Twain", year: "1884", genre: "Fiction", condition: "Poor")
book20.photo.attach(io: URI.open("https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4351/9781435159648.jpg"), filename: "david.jpg", content_type: "image/jpg")
book20.save!
puts "Generated book"

user1 = User.new(email: "wow12212@email.com", password: "password123123")
user1.save!
puts "generated user"

user2 = User.new(email: "aamazing@email.com", password: "password123123")
user2.save!
puts "generated user"

user3 = User.new(email: "super@email.com", password: "password123123")
user3.save!
puts "generated user"

user4 = User.new(email: "sinestro8@email.com", password: "password123123")
user4.save!
puts "generated user"

user5 = User.new(email: "poe@email.com", password: "password123123")
user5.save!
puts "generated user"

user6 = User.new(email: "comic@email.com", password: "password123123")
user6.save!
puts "generated user"

bookstore1 = Bookstore.new(address: "439 Coldharbour Ln, London SW9 8LN, United Kingdom", name: "Book Mongers", user: user1)
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

bookstore5 = Bookstore.new(address: "1 Berwick St, London W1F 0DR, United Kingdom", name: "Gosh! Comics", user: user5)
bookstore5.save!
puts "generated bookstore"

bookstore6 = Bookstore.new(address: "207-209 Kentish Town Rd, London NW5 2JU, United Kingdom", name: "Owl Bookshop", user: user6)
bookstore6.save!
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

physical_book4 = PhysicalBook.new(price: 20, available: "yes", book: book5, bookstore: bookstore1)
physical_book4.save!
puts "generated physical book"

physical_book5 = PhysicalBook.new(price: 22, available: "yes", book: book5, bookstore: bookstore2)
physical_book5.save!
puts "generated physical book"

physical_book7 = PhysicalBook.new(price: 22, available: "yes", book: book5, bookstore: bookstore3)
physical_book7.save!
puts "generated physical book"

physical_book8 = PhysicalBook.new(price: 22, available: false, book: book5, bookstore: bookstore4)
physical_book8.save!
puts "generated physical book"

physical_book6 = PhysicalBook.new(price: 15, available: "yes", book: book1, bookstore: bookstore1)
physical_book6.save!
puts "generated physical book"

physical_book9 = PhysicalBook.new(price: 16, available: "yes", book: book1, bookstore: bookstore4)
physical_book9.save!
puts "generated physical book"

physical_book10 = PhysicalBook.new(price: 15, available: "yes", book: book6, bookstore: bookstore1)
physical_book10.save!
puts "generated physical book"

physical_book11 = PhysicalBook.new(price: 16, available: "yes", book: book6, bookstore: bookstore2)
physical_book11.save!
puts "generated physical book"

physical_book12 = PhysicalBook.new(price: 16, available: "yes", book: book6, bookstore: bookstore3)
physical_book12.save!
puts "generated physical book"

physical_book13 = PhysicalBook.new(price: 21, available: "yes", book: book6, bookstore: bookstore4)
physical_book13.save!
puts "generated physical book"

physical_book14 = PhysicalBook.new(price: 18, available: "yes", book: book2, bookstore: bookstore3)
physical_book14.save!
puts "generated physical book"

physical_book15 = PhysicalBook.new(price: 16, available: "yes", book: book2, bookstore: bookstore5)
physical_book15.save!
puts "generated physical book"

# work on it!
physical_book16 = PhysicalBook.new(price: 27, available: "yes", book: book3, bookstore: bookstore6)
physical_book16.save!
puts "generated physical book"

physical_book17 = PhysicalBook.new(price: 28, available: "yes", book: book4, bookstore: bookstore3)
physical_book17.save!
puts "generated physical book"

physical_book18 = PhysicalBook.new(price: 21, available: "yes", book: book7, bookstore: bookstore5)
physical_book18.save!
puts "generated physical book"

physical_book19 = PhysicalBook.new(price: 19, available: "yes", book: book7, bookstore: bookstore6)
physical_book19.save!
puts "generated physical book"

physical_book20 = PhysicalBook.new(price: 20, available: "yes", book: book8, bookstore: bookstore4)
physical_book20.save!
puts "generated physical book"

physical_book21 = PhysicalBook.new(price: 21, available: "yes", book: book8, bookstore: bookstore1)
physical_book21.save!
puts "generated physical book"

physical_book22 = PhysicalBook.new(price: 11, available: "yes", book: book9, bookstore: bookstore6)
physical_book22.save!
puts "generated physical book"

physical_book23 = PhysicalBook.new(price: 10, available: "yes", book: book9, bookstore: bookstore1)
physical_book23.save!
puts "generated physical book"

physical_book24 = PhysicalBook.new(price: 10, available: "yes", book: book9, bookstore: bookstore4)
physical_book24.save!
puts "generated physical book"

physical_book25 = PhysicalBook.new(price: 37, available: "yes", book: book10, bookstore: bookstore2)
physical_book25.save!
puts "generated physical book"

physical_book26 = PhysicalBook.new(price: 40, available: "yes", book: book10, bookstore: bookstore6)
physical_book26.save!
puts "generated physical book"

physical_book27 = PhysicalBook.new(price: 32, available: "yes", book: book11, bookstore: bookstore1)
physical_book27.save!
puts "generated physical book"

physical_book28 = PhysicalBook.new(price: 20, available: "yes", book: book12, bookstore: bookstore2)
physical_book28.save!
puts "generated physical book"

physical_book29 = PhysicalBook.new(price: 19, available: "yes", book: book12, bookstore: bookstore3)
physical_book29.save!
puts "generated physical book"

physical_book30 = PhysicalBook.new(price: 21, available: "yes", book: book13, bookstore: bookstore6)
physical_book30.save!
puts "generated physical book"

physical_book31 = PhysicalBook.new(price: 20, available: "yes", book: book13, bookstore: bookstore1)
physical_book31.save!
puts "generated physical book"

physical_book32 = PhysicalBook.new(price: 18, available: "yes", book: book14, bookstore: bookstore4)
physical_book32.save!
puts "generated physical book"

physical_book33 = PhysicalBook.new(price: 18, available: "yes", book: book14, bookstore: bookstore3)
physical_book33.save!
puts "generated physical book"

physical_book34 = PhysicalBook.new(price: 17, available: "yes", book: book14, bookstore: bookstore6)
physical_book34.save!
puts "generated physical book"

physical_book35 = PhysicalBook.new(price: 23, available: "yes", book: book15, bookstore: bookstore1)
physical_book35.save!
puts "generated physical book"

physical_book36 = PhysicalBook.new(price: 21, available: "yes", book: book15, bookstore: bookstore4)
physical_book36.save!
puts "generated physical book"

physical_book37 = PhysicalBook.new(price: 19, available: "yes", book: book16, bookstore: bookstore4)
physical_book37.save!
puts "generated physical book"

physical_book38 = PhysicalBook.new(price: 17, available: "yes", book: book16, bookstore: bookstore4)
physical_book38.save!
puts "generated physical book"

physical_book39 = PhysicalBook.new(price: 17, available: "yes", book: book17, bookstore: bookstore2)
physical_book39.save!
puts "generated physical book"

physical_book40 = PhysicalBook.new(price: 19, available: "yes", book: book17, bookstore: bookstore1)
physical_book40.save!
puts "generated physical book"

physical_book41 = PhysicalBook.new(price: 21, available: "yes", book: book18, bookstore: bookstore3)
physical_book41.save!
puts "generated physical book"

physical_book42 = PhysicalBook.new(price: 20, available: "yes", book: book18, bookstore: bookstore4)
physical_book42.save!
puts "generated physical book"

physical_book43 = PhysicalBook.new(price: 19, available: "yes", book: book19, bookstore: bookstore6)
physical_book43.save!
puts "generated physical book"
