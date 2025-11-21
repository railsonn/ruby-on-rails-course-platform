class AddUserToCourses < ActiveRecord::Migration[8.0]
  def change
    add_reference :courses, :user_id, null: false, foreign_key: true
  end
end
