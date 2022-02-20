# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do

  it "ユーザー名、メールアドレス、パスワードがある場合、有効" do
    user = build(:user)
    expect(user).to be_valid
  end

  it "メールアドレスがない場合、無効" do
    user = build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end

  it "パスワードがない場合、無効" do
    user = build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("は3文字以上で入力してください")
  end

  it "メールアドレスが重複している場合、、無効" do
    first_user = create(:user, email: "test@example.com")
    second_user = build(:user, email: "test@example.com")
    second_user.valid?
    expect(second_user.errors[:email]).to include("はすでに存在します")
  end

  it "パスワードが３文字未満の場合、無効" do
    user = build(:user, password: "au")
    user.valid?
    expect(user.errors[:password]).to include("は3文字以上で入力してください")
  end

  it "パスワード確認がない場合、無効" do
    user = build(:user, password_confirmation: nil)
    user.valid?
    expect(user.errors[:password_confirmation]).to include("を入力してください")
  end
end
