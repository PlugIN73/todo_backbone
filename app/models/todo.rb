class Todo < ActiveRecord::Base
  attr_accessible :date_to, :description, :title
end
