module LinksHelper
  def validate_url url
    url ||= ''
    regex = /((http(s)?(\:\/\/))+(www\.)?([\w\-\.\/])*(\.[a-zA-Z]{2,3}\/?))[^\s\b\n|]*[^.,;:\?\!\@\^\$ -]/
    url =~ regex
  end
end
