module FormHelper
  def error_on(object, field)
    errors = object.errors.messages[field.to_sym]
    return if errors.blank?

    content_tag(
      :div,
      error_text(errors),
      class: "alert alert-danger px-3 py-2 my-2"
    )
  end

  private

  def error_text(errors)
    errors.first.upcase_first
  end
end
