class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.timestamps
      t.text :text
      t.references :user, forign_key: true
      t.references :prototype, forign_key: true
    end
  end
end
