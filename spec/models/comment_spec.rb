require 'rails_helper'

describe Comment, type: :model do
  subject(:comment) { build(:comment) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:user_nickname) }
    it { is_expected.to validate_presence_of(:content) }
  end
end
