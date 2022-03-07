class Crawler
    URL = 'http://applicant-test.us-east-1.elasticbeanstalk.com/'

    def initialize
        @web_layer = WebLayer.new
    end

    def get_answer
        page_content = @web_layer.get_page_content(URL)

        token = Parser.get_parsed_token(page_content)

        headers = {
            'Cookie' => @web_layer.cookie.to_cookie_string,
            'Referer' => URL
        }

        body = { token: get_replaced_token(token) }

        res = @web_layer.post(URL, body: body, headers: headers)

        Parser.get_parsed_answer(res.body)
    end
end
