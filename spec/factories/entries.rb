FactoryBot.define do
  factory :entry do
    project { nil }
    user { nil }
    entryable_type { "MyString" }
    entryable_type { 1 }
  end
end
