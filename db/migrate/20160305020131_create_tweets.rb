class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :body, limit: 400, default: ''
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
