class Image < ApplicationRecord
  mount_uploader :file, LgtmUploader

  validates :file, file_size: { less_than: 10.gigabytes }
  before_create {
    self.slug =  SecureRandom.hex(20)
  }
end
