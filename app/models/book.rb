class Book < ApplicationRecord
  has_many :reviews
  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :title, presence: true
  validates :pages, presence: true
  validates :year_pub, presence: true
  validates :publisher, presence: true
  validates :image, presence: true

  def avg_score
    if self.reviews.count == 0
      0
    else
      self.reviews.average(:score)
    end
  end

  def self.select_sort(option)
    if option == "avg_rating_asc"
      self.left_joins(:reviews).group(:id).order("avg(reviews.score) asc nulls first, books.title asc")
    elsif option == "avg_rating_desc"
      self.left_joins(:reviews).group(:id).order("avg(reviews.score) desc nulls last, books.title asc")
    elsif option == "num_pages_asc"
      self.order(:pages)
    elsif option == "num_pages_desc"
      self.order(pages: :desc)
    elsif option == "num_reviews_asc"
      left_joins(:reviews)
      .group(:id)
      .order("reviews.count asc, books.title asc")
    elsif option == "num_reviews_desc"
      left_joins(:reviews)
      .group(:id)
      .order("reviews.count desc, books.title asc")
    end
  end

  def self.top_books
    joins(:reviews).group(:id).order("avg(reviews.score) desc, books.title asc")
  end

  def self.worst_books
    joins(:reviews).group(:id).order("avg(reviews.score) asc, books.title asc")
  end

  def top_reviews
    # binding.pry
    self.reviews.order(score: :desc).limit(3)
    # binding.pry
  end

end
