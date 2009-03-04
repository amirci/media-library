When  /^the (\d+)(st|nd|rd|th) movie has title "(.*)"$/ do |number, ordinal, title|
response.should have_tag(".movies .movie:nth-child(#{number} .title)", title)
