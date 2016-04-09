require 'rails_helper'

RSpec.describe Api::TweetController, type: :controller do
  describe "post #tweet" do 
    let(:user) { FactoryGirl.create(:user) }

    before do
      login_user user
    end

    it "success" do
      post :tweet, data: { tweet: 'aaa' }.to_json
      expect(JSON.parse(response.body)).to eq({ "status" => "OK" })
    end
  end
end
