require 'rails_helper'

RSpec.describe'book show page', type: :feature do
  before :each do
    @book_1 = Book.create(title: "Harry Potter 1", pages: 303, year_pub: 1991, image: "https://d3n8a8pro7vhmx.cloudfront.net/sundayassemblyla/pages/2543/attachments/original/1528303608/book.jpg?1528303608", publisher: "Random House")
    @book_2 = Book.create(title: "Harry Potter 2", pages: 253, year_pub: 1993, image: "https://d3n8a8pro7vhmx.cloudfront.net/sundayassemblyla/pages/2543/attachments/original/1528303608/book.jpg?1528303608", publisher: "Random House")
    @book_3 = Book.create(title: "The Shining", pages: 2045, year_pub: 1991, image: "https://d3n8a8pro7vhmx.cloudfront.net/sundayassemblyla/pages/2543/attachments/original/1528303608/book.jpg?1528303608", publisher: "Random House")
    @review_1 = @book_1.reviews.create(title: "Good book", score: 4, review_text: "text body")
    @review_2 = @book_1.reviews.create(title: "Hated it", score: 1, review_text: "text body")
    @review_3 = @book_2.reviews.create(title: "So so", score: 3, review_text: "text body")
    @reviews = [@review_1, @review_2]
    @user_1 = User.create(reviews: [@review_1, @review_3], name: "April")
    @user_2 = User.create(reviews: [@review_2], name: "Peter")
    @user_3 = User.create(reviews: [@review_3], name: "Julia")
    @user_4 = User.create(name: "Earl")
  end

  context "user sees book information"
    it "user_can_see_a_book_show_page" do

      visit book_path(@book_1)

      expect(page).to have_content(@book_1.title)
      expect(page).to_not have_content(@book_2.title)
      expect(page).to have_content(@book_1.pages)
      expect(page).to_not have_content(@book_3.pages)
      expect(page).to have_content(@book_1.year_pub)
      expect(page).to have_css("img[src*='#{@book_1.image}']")
      expect(page).to have_css("img[src*='#{@book_3.image}']")
    end

  context "user sees book review information"
    it "user_sees_book_reviews_on_show_page" do

      visit book_path(@book_1)

      @reviews.each do |review|
        within ".review_#{review.id}"
          expect(page).to have_content(review.title)
          expect(page).to_not have_content(@review_3.title)
          expect(page).to have_content(review.score)
          #expect(page).to_not have_content(@review_3.score)
          expect(page).to have_content(review.review_text)
          expect(page).to have_content(@review_3.review_text)
      end
    end
end
