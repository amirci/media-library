When /^the (\d+)(st|nd|rd|th) movie has title "(.*)"$/ do |number, ordinal, title|
	response.should have_tag("div.movie:nth-child(#{number})", title)
end

When /^that the library has the following movies:$/ do |movies|
  movies.hashes.each do |hash|
    RAILS_DEFAULT_LOGGER.debug "The title for the hash is #{hash[ 'title' ]}"
    movie = Movie.new( :title => hash[ "title" ],
                       :actors => hash[ "actors" ],
                       :directors => hash[ "directors" ] )
    movie.save!
  end
end

When /^I should see the last (\d+) movies added$/ do |amount|
	response.should have_tag("div.movie", :count => amount.to_i)
end

