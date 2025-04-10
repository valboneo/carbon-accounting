module InfrastructuresHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    css_class = column == params[:sort] ? "current" : nil
    
    link_to infrastructures_path(sort: column, direction: direction), class: "sortable #{css_class}" do
      concat title
      if column == params[:sort]
        concat " "
        concat content_tag(:span, params[:direction] == "asc" ? "↑" : "↓", class: "ml-1")
      end
    end
  end
end
