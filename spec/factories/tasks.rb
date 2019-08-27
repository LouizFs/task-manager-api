FactoryBot.define do
  factory :task do
    title { "MyString" }
    description { "MyText" }
    done { false }
    deadline { "2019-08-27 18:43:53" }
    user { nil }
  end
end
