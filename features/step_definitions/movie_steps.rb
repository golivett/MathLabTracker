# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
   Movie.create!(movie)
  end

end


# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
regexp = /#{e1}.*#{e2}/m 
# /m means match across newlines
page.body.should =~ regexp
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  rating_list.split.each do |rating|
    step %Q{ I #{uncheck}check "ratings_#{rating}"}
  end
end

Then(/^I should see all the movies$/) do
  # Make sure that all the movies in the app are visible in the table
  Movie.where(title).each do |movie|
    step %Q{ I should see "#{movie}"}
  end
end

Then /^the director of "(.*)" should be "(.*)"/ do |title, director|
  step %Q{I should see "#{title}"}
  step %Q{I should see "#{director}"}
end

When(/^ I uncheck "(.*?)"$/) do |arg1|
  uncheck(arg1)
end

Then(/^I should see movies of rating: PG R$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should not see movies of rating: PG\-(\d+) G NC\-(\d+)$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end