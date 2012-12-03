class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :uniqueness => {:case_sensitive => false}
      t.string :password_digest

      t.timestamps
    end
  end
end
