class Datastream::ImageMetadata < ActiveFedora::OmDatastream

  set_terminology do |t|
    t.root(path: "fields")
    t.caption(index_as: :stored_searchable)
    t.photograph_date(index_as: :stored_searchable)
    t.medium(index_as: :stored_searchable)
    t.copyright
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields />")
  end
end
