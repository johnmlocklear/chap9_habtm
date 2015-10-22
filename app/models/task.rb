class Task < ActiveRecord::Base
  has_and_belongs_to_many :categories
  attr_accessible :name, :category_ids

  # a task can have many categories, a category can have many tasks
  has_and_belongs_to_many :categories

	def is_category?(category)
		self.categories.include?(category)
	end

	def unassigned_categories
    Category.find(:all) - self.categories
  end

end
