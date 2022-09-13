require "open-uri"
require "nokogiri"
require "pry"

query = "harry"
# url = "https://www.goodreads.com/search?utf8=%E2%9C%93&q=#{query}&search_type=books"
url = "https://openlibrary.org/search?q=#{query}&mode=everything"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

# html_doc.search(".bookTitle").each do |element|
#   puts element.text.strip
  # url2 = "https://www.goodreads.com/#{element.attribute("href").value}"
#   sleep(3)
#   html_file = URI.open(url2).read
#   html_doc = Nokogiri::HTML(html_file)
#   puts html_doc.search(".bookPageGenreLink").first.inner_text
# end



html_doc.search(".booktitle > .results").each do |element|

  puts element.text.strip # Title
  url2 = "https://openlibrary.org/#{element.attribute("href").value}"
  html_file = URI.open(url2).read
  html = Nokogiri::HTML(html_file)
  puts html.search(".first-published-date").attribute("title").text&.split.last # Year

  puts html.search(".edition-byline > a").first&.text


  # p html.search(".clamp a").children&.text.upcase # Genre


  # genres = ["Adventure", "Childrens", "Classic", "Crime", "Fantasy", "Fiction",
  #   "Horror","Non-fiction", "Science Fiction", "Graphic Novel", "Epic Novel", "Romance"]

  unless html.search(".clamp a").children&.text == nil
    genre_match = (html.search(".clamp a").children&.text).upcase.match(/(Adventure|Childrens|Classic|Crime|FANTASY|Fiction|Horror|Non-fiction|Science Fiction|Graphic Novel|Epic Novel|Romance)/
    ) # Either a match or nil
    if genre_match != nil
      p genre_match.text
    end
  end


  link = html.search(".SRPCover > a > .cover").attribute("src").value # Image
  puts "https:#{link}"
  puts "------------"


end

# https:


# book21 = Book.new(title: " Pride and Prejudice ", author: "Jane Austen", year: "2000", genre: "Fiction")
# book21.photo.attach(io: URI.open("https://almabooks.com/wp-content/uploads/2016/10/9781847493699.jpg"), filename: "david.jpg", content_type: "image/jpg")
# book21.save!
# puts "Generated book"


# html_doc.search(".booktitle > .results").each do |element|

#   book = Book.new
#   book.title = element.text.strip # Title
#   url2 = "https://openlibrary.org/#{element.attribute("href").value}"
#   html_file = URI.open(url2).read
#   html = Nokogiri::HTML(html_file)
#   book.year = html.search(".first-published-date").attribute("title").text&.split.last # Year

#   puts html.search(".edition-byline > a").first&.text # Author


#   book.genre = html.search(".clamp a").first&.children&.text # Genre
#     # Image
#   .photo.attach(io: URI.open("https:#{link}"))
#   puts "------------"
#   book.save!
# end
