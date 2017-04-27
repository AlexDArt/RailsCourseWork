class CreateJoinTableCollectionHall < ActiveRecord::Migration
  def change
    create_join_table :collections, :halls do |t|
      t.index [:collection_id, :hall_id]
      # t.index [:hall_id, :collection_id]
    end
  end
end
