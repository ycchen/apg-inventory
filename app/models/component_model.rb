class ComponentModel < ActiveRecord::Base
  belongs_to :brand, :inverse_of => :component_models

  attr_accessible :autocomplete, :description, :name, :training_required, :brand_id
end
