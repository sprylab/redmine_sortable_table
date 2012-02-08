#

Redmine::Plugin.register :sortable_tables do
  name 'Sortable tables plugin'
  author 'Alexander Golovko'
  description ''
  version '0.99'
  #url 'http://www.redminecrm.com'
  author_url 'mailto:alexandro@ankalagon.ru' if respond_to? :author_url
end


Redmine::WikiFormatting::Macros.register do
  desc "Macro for add javascript and css files for table sort work"
  macro :sortable_tables do |obj, args|
    content_for :header_tags do
      "  %s\n  %s" % [
        javascript_include_tag( "tablesort.js", :plugin => 'sortable_tables'),
        stylesheet_link_tag( :default, :plugin => 'sortable_tables')
      ]
    end
    ""
  end
end

