class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer     :link_id, :index
      t.text        :body
      t.references  :user

      t.timestamps null: false
    end
  end
end
