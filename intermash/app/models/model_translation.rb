class ModelTranslation < ActiveRecord::Base

#  validates_presence_of :translateable_type
#  validates_presence_of :translateable_id
  validates_presence_of :field
  validates_presence_of :locale

  validates_uniqueness_of :translateable_id, :scope=>[:translateable_type, :locale, :field]

#  validates_inclusion_of :locale, :in => ['ru', 'en']

  belongs_to :translateable, :polymorphic => true

end
