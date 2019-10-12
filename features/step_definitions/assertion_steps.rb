Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should be on a purchase page") do
  expect(current_path).to eq new_charge_path
end

Then("I fill in the Stripe field {string} with {string}") do |input_field, value|
  stripe_frame = find("iframe[name='__privateStripeFrame5']")
  case input_field
  when "CC Number"
     field = 'cardnumber'
  end
  within_frame(stripe_frame) do
    find(field).send_keys(value)
  end
end

Then("I submit the Stripe form") do
  pending # Write code here that turns the phrase above into concrete actions
end