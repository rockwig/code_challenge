Given("I am on the rappage") do
  find('h1', :text => "Welcome to MyRapName.com")
end

Then("I see the {word} field") do |field_name|
  assert page.has_field?(field_name)
end

When("I press the {word} button") do |button_name|
  page.find_button(button_name).click
end

Then("I see the message {string}") do |text|
  assert page.has_text?(text)
end

Then("I see the the {word} field is empty") do |field_name|
  assert page.has_field?(field_name, with: '')
end

When("I enter {word} into the {word} field") do |text, field_name|
  page.fill_in field_name, with: text
end

Then("I see {word} in the {word} field") do |text, field_name|
  assert page.has_field?(field_name, with: text)
end

Then("I do not see {word} in the {word} field") do |text, field_name|
  assert page.has_no_field?(field_name, with: text)
end

And("I {word} the {word} checkbox") do |option, box_name|
  case option
  when 'select'
    page.check box_name
  when 'deselect'
    page.uncheck box_name
  else
    fail "No Valid Option (#{option}) found"
  end
end

Then("I see {word} is {word}") do |box_name, state|
  case state
  when 'checked'
    assert page.has_checked_field?(box_name)
  when 'unchecked'
    assert page.has_unchecked_field?(box_name)
  else
    fail "No Valid State #{state} found"
  end
end

Then("I see {int} name(s) added to the list") do |int|
  # 'nh' is a hidden input field, that contains a list of names separated by '/'
  # I choose this validation because the table doesn't have a unique ID, and I didn't want to use xpath
  # risk here is if the hidden field disappears, the test will fail
  name_list = page.find("input[name='nh']", visible: false).value.split("/")
  assert name_list.count == int
end
