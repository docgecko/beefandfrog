module ApplicationHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(
      :hard_wrap => true, :filter_html => true, :safe_links_only => true)
    markdown = Redcarpet::Markdown.new(renderer, 
      :autolink => true, :no_intra_emphasis => true, :fenced_code_blocks => true)
    raw markdown.render(text)
  end
end
