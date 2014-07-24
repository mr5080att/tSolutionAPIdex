class InitialSchema < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string    :attuid, :null => false
      t.string    :password, :null => false
      t.timestamps
    end

    create_table :questions do |t|
      t.string    :title, :null => false
      t.text      :body, :null => false
      t.integer   :user_id, :null => false
      t.string    :tags
      t.integer   :solved_index, :default => -1
      t.timestamps
    end

    create_table :answers do |t|
      t.integer   :user_id, :null => false
      t.integer   :question_id, :null => false
      t.text      :body, :null => false
      t.timestamps
    end

    create_table :comments do |t|
      t.integer   :user_id, :null => false
      t.text      :body, :null => false
      t.integer   :commentable_id, :null => false
      t.string    :commentable_type, :null => false
      t.timestamps
    end
  end
end
