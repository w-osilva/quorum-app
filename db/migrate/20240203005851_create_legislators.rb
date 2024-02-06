class CreateLegislators < ActiveRecord::Migration[7.1]
  def change
    create_table :legislators do |t|
      t.string :name,
               null: false,
               comment: 'The name of the legislator'

      t.timestamps
    end
  end
end
