require "spec_helper"

describe Vote do

	context 'validations' do
		it { should validate_presence_of (:user_id) }
		it { should validate_presence_of (:post_id) }
		end

	context 'associations' do
		it {should belong_to(:user)}
		it {should belong_to(:post)}
	end
end
