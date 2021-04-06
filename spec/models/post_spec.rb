require 'rails_helper'

describe Post, type: :model do
  subject(:post) { build(:post) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_uniqueness_of(:title) }
  end
end
