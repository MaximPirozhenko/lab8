include CalcHelper
class CalcController < ApplicationController
  def input
  end

  def view
    result = processing(params[:v2])
    @kolvo_posl = result.size
    return unless @kolvo_posl.nonzero?
      @inputed = params[:v2].split(' ')
      @max_posl = result.max_by(&:size).join(', ')
      @all = result.map(&:to_s).join(', ')
    end
end
