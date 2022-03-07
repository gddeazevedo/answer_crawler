class WebLayer
    attr_reader :cookie

    def initialize
        @cookie = HTTParty::CookieHash.new
    end

    def get_page_content(url)
        res = HTTParty.get(url)

        if res.code == 200
            @cookie.add_cookies(res.headers['set-cookie'])
            return res.body
        end

        return ''
    end

    def post(url, body: {}, headers: {})
        HTTParty.post(url, body: body, headers: headers)
    end
end
