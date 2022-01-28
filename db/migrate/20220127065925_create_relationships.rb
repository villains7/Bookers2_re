class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.references :followed_id
      t.timestamps

      t.index [:user_id, :follow_id], unique: true
    end
  end
end
