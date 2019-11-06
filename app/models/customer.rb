class Customer
  attr_reader :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end
  
  def self.all
    @@all
  end

  def restaurants
    my_rev = Review.all.select {|rev| rev.customer == self}
    my_rev.map {|rev| rev.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    my_rev = Review.all.select {|rev| rev.customer == self}.count
  end

  def self.find_by_name(name)
    @@all.find {|cust| cust.given_name + " " + cust.family_name == name }
  end

  def self.find_all_by_given_name(name)
    @@all.select {|cust| cust.given_name == name}
  end
end
