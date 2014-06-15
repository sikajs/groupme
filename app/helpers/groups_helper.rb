module GroupsHelper

  def render_group_editable_action(group)
    if current_user && group.editable_by?(current_user)
      link_to("Edit", edit_group_path(group), :class => "btn btn-mini")
    end
  end

  def render_group_deletable_action(group)
    if current_user && group.editable_by?(current_user)
      link_to("Delete", group_path(group), :class => "btn btn-mini", :method => :delete, :confirm => "Are you sure?" )
    end
  end
end
