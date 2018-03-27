class Solbox < ActiveRecord::Base
  has_many :solboxes_from, class_name: 'Cable', foreign_key: 'solbox_from_id', inverse_of: :solbox_from
  has_many :solboxes_to, class_name: 'Cable', foreign_key: 'solbox_to_id', inverse_of: :solbox_to
end
