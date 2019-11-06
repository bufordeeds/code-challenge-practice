class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    my_rest_reviews = Review.all.select {|rev| rev.restaurant == self}
    my_rest_reviews.map {|rev| rev.customer}.uniq
  end

  def average_star_rating
    reviews = self.reviews
    reviews.reduce(0) {|sum,rev| sum+rev.rating}.to_f/reviews.length
  end

  def self.all
    @@all
  end


end
