class Parser
    def self.get_parsed_token(content)
        html = Nokogiri::HTML(content)
        html.at_css("input#token").attributes["value"].to_s
    end

    def self.get_parsed_answer(content)
        html = Nokogiri::HTML(content)
        html.at_css('span#answer').inner_html
    end
end
