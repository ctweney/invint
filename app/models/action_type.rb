class ActionType < ActiveRecord::Base

  has_many :project_actions, :inverse_of => :action_type

  rails_admin do
    fields do
      help false
    end
    configure :action_type_id do
      read_only true
      label 'ID:'
    end
  end

  def name
    description
  end

end
