require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    let(:params) {{name: "sato"}}

    it "年齢1：ユーザーの名前が取得できること" do
      # name以外を後から追加したいとき
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "satoちゃん"
    end

    it "年齢15：ユーザーの名前が取得できること" do
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "sato君"
    end

    it "年齢30：ユーザーの名前が取得できること" do
      params.merge!(age: 30)
      user = User.new(params)
      expect(user.disp_name).to eq "satoさん"
    end

    it "年齢-5：ユーザーの名前が取得できること" do
      params.merge!(age: -5)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です"
    end
  end
end

# RSpec.describe User, type: :model do
#   describe "名前の表示" do
#     it "年齢1：ユーザーの名前が取得できること" do
#       user = User.new(name: "sato", age: 1)
#       expect(user.disp_name).to eq "satoちゃん"
#     end
#
#     it "年齢15：ユーザーの名前が取得できること" do
#       user = User.new(name: "sato", age: 15)
#       expect(user.disp_name).to eq "sato君"
#     end
#
#     it "年齢30：ユーザーの名前が取得できること" do
#       user = User.new(name: "sato", age: 30)
#       expect(user.disp_name).to eq "satoさん"
#     end
#   end
# end

# let(:params) {{name: "sato", age: 1}}
# let(:params2) {{name: "sato", age: 15}}
# let(:params3) {{name: "sato", age: 30}}
# let(:params4) {{name: "sato", age: -5}}
