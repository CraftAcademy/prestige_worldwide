Given("I am on the home page") do
  visit root_path
end

When("I click {string}") do |element|
  click_on element
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("the following user exists:") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end