require 'rails_helper'

describe Comment, type: :model do
  subject(:comment) { Comment.new(user_nickname: 'nickname', content: 'really good post bro', post: post) }
  let(:post) { Post.new(title: 'amazing post', content: 'even more amazing content') }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:user_nickname) }
    it { is_expected.to validate_presence_of(:content) }
  end
end
