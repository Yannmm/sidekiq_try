class GenerateRandomUserJob < ApplicationJob
  queue_as :default

  def perform(*args)
    user = User.new
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.motto = Faker::Lorem.sentence(word_count: 100)

    user.save!

    sleep 5
  end
end
