Given(/^a user has made a request$/) do
  user = User.create(name: "Drunk User")
  @request = Actionpark::Request.create(user_id: user.id, action_name: "death", controller_name: "worst_ride_ever")
end

When(/^I am on the dashboard$/) do
  visit dashboard_path
end

Then(/^I should see the user's request$/) do
  expect(page).to have_content @request.user_id
  expect(page).to have_content @request.action_name
  expect(page).to have_content @request.controller_name
end
