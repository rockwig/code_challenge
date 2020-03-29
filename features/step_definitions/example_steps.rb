Given(/^I am on the homepage$/) do
  find('h1', :text => "Welcome to MyRapName.com")
end

Then(/^I see the text "(.*?)"$/) do |text|
  assert page.has_text?(text)
end
