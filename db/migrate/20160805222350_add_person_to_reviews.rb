class AddPersonToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :person, index: true, foreign_key: true
  end
end
