# frozen_string_literal: true

require_relative "actionjdjackson_palindrome/version"

module ActionjdjacksonPalindrome

  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end

end

class String
  include ActionjdjacksonPalindrome
end

class Integer
  include ActionjdjacksonPalindrome
end
