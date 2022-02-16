# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  it 'タイトル、メッセージがある場合' do
    inquiry = build(:inquiry)
    expect(inquiry).to be_valid
  end

  it 'メッセージがない場合' do
    inquiry = build(:inquiry, title: nil)
    expect(inquiry).not_to be_valid
  end
end
