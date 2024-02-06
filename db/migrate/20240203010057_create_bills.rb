class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills do |t|
      t.string :title,
               null: false,
               comment: 'The name of the bill'

      t.integer :sponsor_id,
                null: false,
                index: true,
                comment: 'The id of the primary sponsor(of type Person)'

      t.timestamps
    end
  end
end
