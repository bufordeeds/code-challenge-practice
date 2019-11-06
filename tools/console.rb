require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer instances
buford = Customer.new('Buford', 'Eeds')
casey = Customer.new('Casey', 'Lizaso')
adam = Customer.new('Adam', 'Age')
adamE = Customer.new('Adam', 'Eeds')


#restaurant instances
tww = Restaurant.new('Tommy Want Wingy')
northItalia = Restaurant.new('North Italia')
shakeShack = Restaurant.new('Shake Shack')

#review instances
bufordsReview = Review.new(buford,tww,10)
bufordsReview2 = Review.new(buford,tww,10)
caseysReview2 = Review.new(casey,tww,9)
caseysReview = Review.new(casey,northItalia,9)
adamsReview = Review.new(adam,shakeShack,8)
adamReview2 = adam.add_review(tww,7)
adamReview3 = adam.add_review(tww,3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line