# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


rails g scaffold log_score  points_worked_out:integer points_tracked_food:integer points_met_calorie_goal:integer points_maintain_weight:integer points_maintain_body_fat:integer points_met_active_calorie_goal:integer total_points: integer log:belongs_to challenge_goal:belongs_to  --no-test-framework