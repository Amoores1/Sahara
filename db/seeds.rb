require "open-uri"
require "nokogiri"

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

user7 = User.new(email: "aaron@me.com", password: "password")
user7.save!
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

# book22 = Book.new(title: "November 9", author: "Colleen Hoover", year: "2015", genre: "Fiction")
# book22.photo.attach(io: URI.open("https://covers.openlibrary.org/b/olid/OL27198876M-M.jpg"), filename: "david.jpg", content_type: "image/jpg")
# book22.save!
# puts "Generated book"

total_bookstores = []

total_bookstores << bookstore1
total_bookstores << bookstore2
total_bookstores << bookstore3
total_bookstores << bookstore4
total_bookstores << bookstore5
total_bookstores << bookstore6

total_books = []

authors = [
  # "https://openlibrary.org/authors/OL391839A/James_Baldwin",
  # "https://openlibrary.org/authors/OL23919A/J._K._Rowling",
  # "https://openlibrary.org/authors/OL27349A/F._Scott_Fitzgerald",
  # "https://openlibrary.org/authors/OL31353A/Ursula_K._Le_Guin",
  # "https://openlibrary.org/authors/OL26320A/J.R.R._Tolkien",
  # "https://openlibrary.org/authors/OL2162284A/Stephen_King",
  # "https://openlibrary.org/authors/OL20187A/Kurt_Vonnegut",
  # "https://openlibrary.org/authors/OL118077A/George_Orwell",
  # "https://openlibrary.org/authors/OL13640A/Ernest_Hemingway",
  # "https://openlibrary.org/authors/OL24638A/Charles_Dickens",
  # "https://openlibrary.org/authors/OL23919A/J._K._Rowling",
  "https://openlibrary.org/authors/OL234664A/George_R._R._Martin"
]

queries = ["the lord of the rings", "harry", "war"]
authors.each do |url|
  # url = "https://openlibrary.org/search?q=#{query}&mode=everything"
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search(".booktitle > .results").each do |element|
    book = Book.new
    book.title = element.text.strip # Title
    url2 = "https://openlibrary.org/#{element.attribute("href").value}"
    html_file = URI.open(url2).read
    html = Nokogiri::HTML(html_file)
    book.year = html.search(".first-published-date").attribute("title")&.text&.split&.last # Year
    book.author = html.search(".edition-byline > a").first&.text # Author
    unless html.search(".clamp a").children&.text == nil
      genre_match = (html.search(".clamp a").children&.text).upcase.match(/(ADVENTURE|CHILDRENS|CLASSIC|CRIME|FANTASY|FICTION|HORROR|NON-FICTION|SCIENCE FICTION|GRAPHIC NOVEL|EPIC NOVEL|ROMANCE)/
      ) # Either a match or nil
      if genre_match != nil
        # puts genre_match[0].capitalize
        book.genre = genre_match[0].capitalize
      end
    end
    link = html.search(".SRPCover > a > .cover").attribute("src").value # Image
    unless link == "" || link.include?("http") || genre_match == nil || book.year == nil || book.author == nil || book.title == nil
      book.photo.attach(io: URI.open("https:#{link}"), filename: "david.jpg", content_type: "image/jpg")
      book.save!
      puts book.title
      puts book.genre
      puts book.author
      total_books << book
    end
    puts "------------"
  end
end



total_books.each do |book|
  copies = rand(1..2)
  puts "Creating #{copies} new physical for #{book.title}..."
  copies.times do
    new_physical_book = PhysicalBook.new(
      price: rand(8..14),
      stripe_price_cents: [799, 899, 999, 1099, 1199, 1299, 1399, 1499].sample,
      available: "yes",
      book: book,
      bookstore: total_bookstores.sample,
      condition: "New"
    )
    new_physical_book.save!
  end

  copies = rand(1..2)
  puts "Creating #{copies} new physical for #{book.title}..."
  copies.times do
    used_physical_book = PhysicalBook.new(
      price: rand(3..8),
      stripe_price_cents: [299, 399, 499, 599, 699, 799].sample,
      available: "yes",
      book: book,
      bookstore: total_bookstores.sample,
      condition: "Used"
    )
    used_physical_book.save!
  end
end
