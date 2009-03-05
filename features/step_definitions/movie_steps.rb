When /^the (\d+)(st|nd|rd|th) movie has title "(.*)"$/ do |number, ordinal, title|
	response.should have_tag("div.movie:nth-child(#{number})", title)
end

When /^that the library has the following movies:$/ do |movies|
  movie = Movie.new( :title => "Rocky I", 
                     :actors => "Silvester Stallone",
                     :directors => "Don't know" )
  movie.save!
end

When /^I should see the last (\d+) movies added$/ do |amount|
	response.should have_tag("div.movie", :count => amount.to_i)
end

