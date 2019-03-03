class DocsController < ApplicationController
  def api
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
    doc = File.read(Rails.root.join("docs", "api.md"))
    @api_doc = markdown.render(doc)
  end
end
