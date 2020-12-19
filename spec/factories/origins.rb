FactoryBot.define do
  factory :origin do
    book_title            {"eee"}
    category_id           {2}
    youtube_url           {"uuu"}
    amazon                {"uuu"}
    text                  {"yyy"}
   
    association :user
  end
end