Given(/^a user has made a request$/) do
  user = User.create(name: "Drunk User")
  @request = Actionpark::Request.create(
    user_id: user.id,
    action_name: "death",
    controller_name: "worst_ride_ever"
  )
end

When(/^I am on the dashboard$/) do
  visit 'actionpark/dashboard'
end

Then(/^I should see the user's request$/) do
  expect(page).to have_content @request.user_id
  expect(page).to have_content @request.action_name
  expect(page).to have_content @request.controller_name
end

Given(/^users are available$/) do
  @user1 = User.create(name: "Drunk User")
  @user2 = User.create(name: "Crazy User")
end

Given(/^requests have been created$/) do
  visit loop_ride_start_path(user_id: @user1.id)
  visit loop_ride_start_path(user_id: @user2.id)
end

When(/^I filter for user id "(.*?)"$/) do |user_id|
  fill_in "user_id", with: user_id
  click_on
end

Then(/^I should see the actions for user with id "(.*?)"$/) do |user_id|
  expect(page).to have_content user_id
end
