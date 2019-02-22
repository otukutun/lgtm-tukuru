class Image < ApplicationRecord
  has_one_attached :content

  def thumbnail
    content.variant(resize: '600x600').processed
  end
end
