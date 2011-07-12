module ActionView::Helpers::JavaScriptHelper
  def escape_javascript_with_workaround(javascript)
    escape_javascript_without_workaround(javascript.try(:to_str)).html_safe
  end

  alias_method_chain :escape_javascript, :workaround
end