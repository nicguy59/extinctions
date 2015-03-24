class Classification < ActiveRecord::Base
  has_many :animals
  validates_format_of :name, :without => /\A^d\z/

  def to_param
    name
  end

  def self.find(input)
    input.to_i == 0 ? find_by_name(input) : super
  end
  
end
