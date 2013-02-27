class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|

      t.string :name
      t.integer :createdbyuser
      t.string :resolvestatus
      t.string :assignee
      t.string :description
      t.boolean :complete

      t.timestamps
    end
  end
end
