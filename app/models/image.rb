class Image < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::ImageMetadata
  has_file_datastream 'imageContent'
 
  belongs_to: :site, :property=> :is_part_of

  delegate :caption, to: 'descMetadata'
  delegate :photograph_date, to: 'descMetadata'
  delegate :medium, to: 'descMetadata'
  delegate :copyright, to: 'descMetadata'
end
