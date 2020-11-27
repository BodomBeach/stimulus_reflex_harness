# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def open_modal
    count = 0
    morph "#modal-container", ApplicationController.render(partial: "home/modal", locals: {count: count})
  end

  def update_count
    count = element.dataset[:count].to_i + 1
    morph "#modal-container", ApplicationController.render(partial: "home/modal", locals: {count: count})
  end

end
