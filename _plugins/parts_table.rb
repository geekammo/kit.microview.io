module Jekyll
  class RenderPartsTable < Liquid::Tag


    def initialize(tag_name, parts_arr, tokens)
      super
      @parts_library = YAML.load(File.read("_plugins/parts.yaml"))
      @parts_library = @parts_library["parts"]
      @parts_library = @parts_library.reduce Hash.new, :merge
    end

    def render(context)
      returned_str = "<table cellpadding=\"0\" cellspacing=\"0\">"
      returned_str = returned_str+ "\n\t<tbody><tr>"
      returned_str = returned_str+ "\n\t<th>Component</th>"
      returned_str = returned_str+ "\n\t<th>Reference Image</th>"
      returned_str = returned_str+ "\n\t<th><!-- Breadboard Points --></th>"


      context.environments.first["page"]["parts"].each do |part|
          returned_str = returned_str+ "\n\t\t<tr>"
          returned_str = returned_str+ "\n\t\t\t<td>#{@parts_library[part['sku']]['name']}</td>"
          returned_str = returned_str+ "\n\t\t\t<td><img src=\"/parts/#{part['sku']}/diagram.svg\" class=\"svg-part\" alt=\"#{@parts_library[part['sku']]['name']} Diagram\"/></td>"
          returned_str = returned_str+ "\n\t\t\t<td><!-- #{part['points']}--></td>"
          returned_str = returned_str+ "\n\t\t</tr>"
      end
#
      returned_str = returned_str+ "\n\t</tbody></table>"

      "#{returned_str}"
    end
  end

end

Liquid::Template.register_tag('parts_table', Jekyll::RenderPartsTable)
