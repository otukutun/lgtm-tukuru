class DocsController < ApplicationController
  def api
    options = {
      autolink: true,
      space_after_headers: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      tables: true,
      hard_wrap: true,
      xhtml: true,
      lax_html_blocks: true,
      strikethrough: true
    }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    doc = File.read(Rails.root.join("docs", "api.md"))
    @api_doc = markdown.render(doc)
  end
end
