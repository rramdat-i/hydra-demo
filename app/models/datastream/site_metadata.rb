class Datastream::SiteMetadata < ActiveFedora::OmDatastream

  set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable)
    t.country(index_as: :stored_searchable)
    t.built_year(index_as: :stored_searchable)
    t.description
    t.creator
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields />")
  end
end
