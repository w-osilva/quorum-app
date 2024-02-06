class CreateVotes < ActiveRecord::Migration[7.1]
  def change
    create_table :votes do |t|
      t.integer :bill_id,
                index: true,
                comment: 'The id of the bill that this vote is associated with'

      t.timestamps
    end
  end
end
