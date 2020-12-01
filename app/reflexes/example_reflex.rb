# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def update_full_page
    @value1 = element.dataset[:value].to_i + 1
  end

  def update_partial
    value2 = element.dataset[:value].to_i + 1
    morph '#partial-container', ApplicationController.render(partial: "home/value2_partial", locals: {value2: value2})
  end

end
