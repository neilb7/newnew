class Post < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "204x204", :thumb => "100x100" }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  self.per_page = 5
end
