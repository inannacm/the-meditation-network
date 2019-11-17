class RemoveColumnFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :session_id, :integer
  end
end
