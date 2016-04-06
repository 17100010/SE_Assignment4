Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
  end
  # flunk "Unimplemented"
end



Then /the director of "(.*)" should be "(.*)"/ do |m, d|
   x = page.body.to_s.include?(m)
   y = page.body.to_s.include?(d)
   assert(x==y, "Error")
 end