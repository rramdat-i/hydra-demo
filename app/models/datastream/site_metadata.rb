class Datastream::SiteMetadata < ActiveFedora::OmDatastream

  set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable)
    t.style(index_as: :stored_searchable)
    t.culture(index_as: :stored_searchable)
    t.narrative
    t.creator
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields />")
  end
end
