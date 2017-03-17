module ApplicationHelper
  def markdown
    # markdown = Redcarpet::Markdown.new(Redcarpet::Render::StripDown)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end
