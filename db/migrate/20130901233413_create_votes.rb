class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.references :user
    	t.references :post
    	t.boolean	 :upvote, :default => false

    end
  end
end
