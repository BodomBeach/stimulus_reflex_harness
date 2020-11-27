# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def test
    puts "We're live!"
  end

  def update_count
    @count = 1
    @message = "Success"
  end
end
