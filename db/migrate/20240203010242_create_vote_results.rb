class CreateVoteResults < ActiveRecord::Migration[7.1]
  def change
    create_table :vote_results do |t|
      t.integer :legislator_id,
                index: true,
                comment: 'The id of the legislator casting a vote'

      t.integer :vote_id,
                index: true,
                comment: 'The id of the vote associated with this cast'

      t.integer :vote_type,
                null: false,
                comment: 'The type of vote cast (1 for yea and 2 for nay)'

      t.timestamps
    end
  end
end
