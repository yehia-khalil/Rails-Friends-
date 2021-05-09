class CreateCommenters < ActiveRecord::Migration[5.2]
  def change
    create_table :commenters do |t|
      t.string :commenter
      t.text :body
      t.references :friend, foreign_key: true

      t.timestamps
    end
  end
end
