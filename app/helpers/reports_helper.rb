module ReportsHelper
  def sort_to(column)
    direction = (params[:sort] == column && params[:direction] == 'desc') ? 'asc' : 'desc'
    link_to(column.capitalize, { sort: column, direction: direction }, class: params[:sort] == column ? direction : nil)
  end
end
