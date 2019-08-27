FactoryBot.define do
  factory :task do
    title  { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    deadline { Faker::Date.forward }
    done { false } 
    user #cria um user e automaticamente associa a uma tarefa
  end
end
