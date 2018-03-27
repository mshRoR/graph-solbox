class Cable < ActiveRecord::Base
  belongs_to :solbox_from, class_name: 'Solbox', inverse_of: :solboxes_from
  belongs_to :solbox_to, class_name: 'Solbox', inverse_of: :solboxes_to

  private

  def self.nodes_edges
    nodes = []
    edges = []
    self.all.each_with_index do |c, index|
      nodes << { "id": "n#{index}", "label": "#{c.solbox_from_id}", "x": 0, "y": c.distance, "size": 2 }
      edges << { "id": "e#{index}", "source": "#{c.solbox_from_id}", "target": "#{c.solbox_to_id}" }
    end
    { "nodes": nodes, "edges": edges }
  end
end
