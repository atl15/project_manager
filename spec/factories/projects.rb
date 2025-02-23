FactoryBot.define do
  factory :project do
    name { "Task" }
    text { "Taks description" }
    status { 1 }
  end
end
