class Girl < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  validates :product_code, :uniqueness => true, :presence => true

  def avatar_file_path
    "/u/apps/files/listing/avatars/#{product_code}.jpg"
  end
end
