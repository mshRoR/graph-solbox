class Cable < ActiveRecord::Base
  belongs_to :solbox_from, class_name: 'Solbox', inverse_of: :solboxes_from
  belongs_to :solbox_to, class_name: 'Solbox', inverse_of: :solboxes_to

  private

  def self.nodes_edges
    nodes = Solbox.all.pluck(:id)
    edges = []
    Cable.all.each do |cable|
      label = "#{cable.cable_identity} distance: #{cable.distance}"
      edges << [cable.solbox_from_id, cable.solbox_to_id, { label: label }]
    end

    { nodes: nodes, edges: edges }
  end
end
