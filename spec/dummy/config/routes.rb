Rails.application.routes.draw do

  mount Actionpark::Engine => "/actionpark"

  get "loop_ride/start"
  get "loop_ride/get_stuck"
end
