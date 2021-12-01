require "rails_helper"
  
  RSpec.describe Review, type: :model do
    
    it "全てのレビュー項目に数値がある->成功" do
      review = build(:review)
      expect(review).to be_valid
    end

    it "sweetがない場合->失敗" do
      review = build(:review, sweet: nil)
      expect(review).not_to be_valid
    end

    it "cacaoがない場合->失敗" do
      review = build(:review, cacao: nil)
      expect(review).not_to be_valid
    end

    it "appearanceがない場合->失敗" do
      review = build(:review, appearance: nil)
      expect(review).not_to be_valid
    end

    it "textureがない場合->失敗" do
      review = build(:review, texture: nil)
      expect(review).not_to be_valid
    end

    it "meltがない場合->失敗" do
      review = build(:review, melt: nil)
      expect(review).not_to be_valid
    end

    it "全てのレビュー項目に数字がない場合->失敗" do
      review = build(:review, sweet: nil, cacao: nil, appearance: nil, texture: nil, melt: nil)
      expect(review).not_to be_valid
    end
    
  end

