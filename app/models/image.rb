class Image < ApplicationRecord
  mount_uploader :file, LgtmUploader
  # has_one_attached :content
  # validate :validate_content

  before_create {
    self.slug =  SecureRandom.hex(20)
  }

  def thumbnail
    content.variant(resize: '600x600').processed
  end

#  def lgtm
#    content.variant(combine_options: {
#      resize: '600x600',
#      fill: '#FFFFFF',
#      font: 'Arial',
#      pointsize: 80,
#      gravity: 'Center',
#      draw: "text 0,0 'LGTM'"
#    }).processed
#  end
#
#  def validate_content
#    unless content.attached?
#      errors.add(:content, 'File is empty')
#      return
#    end
#    if content.blob.byte_size > 10.megabytes
#      content.purge
#      errors.add(:content, 'File size is too large')
#    elsif !valid_image_type?
#      content.purge
#      errors.add(:content, 'File type is not valid')
#    end
#  end
#
#  def valid_image_type?
#    %w[image/jpg image/jpeg image/gif image/png].include?(content.blob.content_type)
#  end
#
#
#  def cloudfront_host
#    ENV['AWS_CLOUDFRONT_HOST']
#  end
#
#   def lgtm_cloudfront_url
#    return lgtm.service_url unless cloudfront_host
#    return lgtm.service_url unless lgtm.service.is_a?(ActiveStorage::Service::S3Service)
#    uri = URI(lgtm.service_url)
#    path = uri.path.gsub("/#{lgtm.service.bucket.name}", '')
#    "https://#{cloudfront_host}#{path}"
#  end
end
