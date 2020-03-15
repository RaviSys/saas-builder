module ApplicationHelper
  def get_field_form_tag(table_field)
    if table_field.field_type == "string"
      "text_field_tag"
    elsif table_field.field_type == "text"
      "text_area_tag"
    elsif ["collection", "check_box", "radio_button"].include? (table_field.field_type)
      "#{table_field.field_type}_tag"
    else
      "#{table_field.field_type}_field_tag"
    end
  end
end
