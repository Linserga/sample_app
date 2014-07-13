class AddIndexToUsersEmail < ActiveRecord::Migration
  before_save {self.email = email.downcase}
  def change
  	add_index :users, :email, unique: true
  end
end
