class Brand < ActiveRecord::Base
  attr_accessible :name

  has_many :component_models
end
