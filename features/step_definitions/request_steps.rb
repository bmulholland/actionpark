When(/^a user loads a page$/) do
  @user = User.create(name: "Example User")
  visit loop_ride_start_path(user_id: @user.id)
end

Then(/^the user's action should be stored in the database$/) do
  request = Actionpark::Request.where(user_id: @user.id).first
  expect(request).to_not be_nil
end
