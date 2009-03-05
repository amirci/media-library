When /^the (\d+)(st|nd|rd|th) movie has title "(.*)"$/ do |number, ordinal, title|
	response.should have_tag(".movies.movie:nth-child(#{number}).title", title )
end

When /^that the library has the following movies:$/ do |movies|

end

When /^I should see the last (\d+) movies added$/ do |amount|

end

