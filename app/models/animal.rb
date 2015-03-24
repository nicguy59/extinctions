class Animal < ActiveRecord::Base
  belongs_to :classification
  has_many :common_names
  #validates_format_of :name, :without => /\A^d\z/

  def recent?
    extinction_date > 1900
  end

  def to_param
    name
  end

  def has_image
    image_url.present?    
  end 

  def self.find(input)
    input.to_i == 0 ? find_by_name(input) : super
  end
  
end
