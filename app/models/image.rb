class Image < ApplicationRecord
  has_one_attached :content
  validate :validate_content

  before_create {
    self.slug =  SecureRandom.hex(20)
  }

  def thumbnail
    content.variant(resize: '600x600').processed
  end

  def validate_content
    unless content.attached?
      errors.add(:content, 'File is empty')
      return
    end
    if content.blob.byte_size > 10.megabytes
      content.purge
      errors.add(:content, 'File size is too large')
    elsif !valid_image_type?
      content.purge
      errors.add(:content, 'File type is not valid')
    end
  end

  def valid_image_type?
    %w[image/jpg image/jpeg image/gif image/png].include?(content.blob.content_type)
  end
end
