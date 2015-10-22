class CreatCategoriesTasks < ActiveRecord::Migration
  def up
    create_table :categories_tasks, :id => false do |t|
      t.integer :task_id
      t.integer :category_id
    end
  end

  def down
  end
end
