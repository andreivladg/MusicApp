class CreateTrackRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :track_relationships do |t|
      t.integer :user_id
      t.integer :track_id

      t.timestamps
    end
  end
end
