# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Chocolate, type: :model do
  it 'チョコレートの名前、詳細がある場合' do
    chocolate = build(:chocolate)
    expect(chocolate).to be_valid
  end

  it 'チョコレートの名前のみの場合' do
    chocolate = build(:chocolate, detail: nil)
    expect(chocolate).not_to be_valid
  end

  it 'チョコレートの名前がない場合' do
    chocolate = build(:chocolate, name: nil)
    expect(chocolate).not_to be_valid
  end
end
