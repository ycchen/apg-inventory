class Budget < ActiveRecord::Base
  attr_accessible :ends_at, :name, :number, :starts_at

  has_many :kits, :inverse_of => :budget

  validates :name, :presence => true
  validates :number, :format  => {:with => /\d{2}-\d{4}/, :message => "Must follow format XX-XXXX"}
  validates :number, :presence => true
  validates :number, :uniqueness => {:scope => :starts_at}
  validates :starts_at, :presence => true
  validates :ends_at, :presence => true
  validate :starts_at_must_be_before_ends_at, :fields =>[:starts_at, :ends_at]

  def starts_at_must_be_before_ends_at
  	# if :starts_at > :ends_at
  	# 	errors.add(:starts_at, "cannot be greater than eneds_at")
  	# end
  	errors.add(:starts_at, "must be before ends_at") unless starts_at < ends_at
  end

end
