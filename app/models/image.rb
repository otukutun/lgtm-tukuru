class Image < ApplicationRecord
  mount_uploader :file, LgtmUploader

  validates :file,
    presence: true,
    file_size: { less_than: 10.megabytes },
    file_content_type: { allow: ['image/jpeg', 'image/gif', 'image/png'] }
  before_create {
    self.slug =  SecureRandom.hex(20)
  }
end
