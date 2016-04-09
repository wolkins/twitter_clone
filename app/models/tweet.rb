class Tweet < ActiveRecord::Base
  belongs_to :user

  scope :tweets, -> (user_id) do
    where(user_id: user_id)
  end

  scope :search, -> (_word) do
    where(arel_table[:body].matches('%word%'))
  end
end
