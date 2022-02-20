require 'rails_helper'

RSpec.describe User, type: :system do
  let(:user) { create(:user) }
  let(:another_user) { create(:user) }

  describe 'ログイン前' do
    describe 'ユーザー新規登録' do
      context 'フォーム入力値が正常' do
        it 'ユーザーの新規登録が成功' do
          visit new_user_path
          fill_in '名前', with: "User"
          fill_in 'メール', with: "test@example.com"
          fill_in 'パスワード', with: "password"
          fill_in 'パスワード確認', with: "password"
          click_button '登録'
          expect(current_path).to eq root_path
        end
      end
      context 'メールアドレス未入力の場合、無効' do
        it 'ユーザーの新規登録が失敗' do
          visit new_user_path
          fill_in '名前', with: "User"
          fill_in 'メール', with: nil
          fill_in 'パスワード', with: "password"
          fill_in 'パスワード確認', with: "password"
          click_button '登録'
          expect(current_path).to eq users_path
          expect(page).to have_content "メールを入力してください"
        end
      end
      context 'パスワード未入力の場合、無効' do
        it 'ユーザーの新規登録が失敗' do
          visit new_user_path
          fill_in '名前', with: "User"
          fill_in 'メール', with: "test@example.com"
          fill_in 'パスワード', with: nil
          fill_in 'パスワード確認', with: "password"
          click_button '登録'
          expect(current_path).to eq users_path
          expect(page).to have_content "パスワードは3文字以上で入力してください"
        end
      end
      context '登録済みメールアドレスの場合、無効' do
        it 'ユーザーの新規登録が失敗' do
          visit new_user_path
          fill_in '名前', with: "User"
          fill_in 'メール', with: user.email
          fill_in 'パスワード', with: "password"
          fill_in 'パスワード確認', with: "password"
          click_button '登録'
          expect(current_path).to eq users_path
          expect(page).to have_content "メールはすでに存在します"
        end
      end
    end
  end
end
