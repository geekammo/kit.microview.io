module Jekyll
  class RenderPartsQtys < Liquid::Tag


    def initialize(tag_name, parts_arr, tokens)
      super
      @parts_library = YAML.load(File.read("_plugins/parts.yaml"))
      @parts_library = @parts_library["parts"]
      @parts_library = @parts_library.reduce Hash.new, :merge
    end


    def render(context)
      page_parts = context.environments.first["page"]["parts"]

      parts_arr = []
      page_parts.each do |part|
        parts_arr << part["sku"]
      end

      counts = Hash.new(0)
      parts_arr.each { |name| counts[name] += 1 }

      page_parts = page_parts.uniq {|e| e["sku"] }

      page_parts.each do |part|
        part["count"] = counts[part["sku"]]
      end

      returned_str = "<ul>"
      page_parts.each do |part|
        #puts @parts_library.inspect
        #puts "\n"
        #puts part.inspect

        #puts @parts_library[part['sku']].inspect
        returned_str = returned_str + "\n\t<li>#{part['count']}x <a href=\"#{@parts_library[part['sku']]['url']}\">#{@parts_library[part['sku']]['name']}</a></li>"
      end
      returned_str = returned_str + "\n</ul>"

      "#{returned_str}"
    end
  end

end

Liquid::Template.register_tag('parts_qtys', Jekyll::RenderPartsQtys)
