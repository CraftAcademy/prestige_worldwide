Given("I am on the home page") do
  visit root_path
end

Given("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("I click {string}") do |element|
  click_on element
end 

Given("the following user exists:") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Given("I am logged in as {string}") do |string|
  user = User.find_by(email: string)
  login_as(user, scope: :user)
end

