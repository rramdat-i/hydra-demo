class Site < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::SiteMetadata
  
  has_many :images, :property=> :is_part_of

  delegate :title, to: 'descMetadata'
  delegate :country, to: 'descMetadata'
  delegate :built_year, to: 'descMetadata'
  delegate :description, to: 'descMetadata'
  delegate :creator, to: 'descMetadata'
end
