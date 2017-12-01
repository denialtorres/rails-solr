class Player < ActiveRecord::Base
  belongs_to :team

  has_one :player_statistic

  # INDEXING IN SOLR!!!!!!!!!!!!!!!!
  # reindexing the data in solr
  # rake sunspot:solr:reindex

  searchable do
    text :name
    string :position
  end

  def name
    return self.first_name + ' ' + self.last_name
  end

end
