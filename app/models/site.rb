class Site < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::SiteMetadata

  delegate :title, to: 'descMetadata'
  delegate :creator, to: 'descMetadata'
  delegate :style, to: 'descMetadata'
  delegate :culture, to: 'descMetadata'
  delegate :narrative, to: 'descMetadata'
end
