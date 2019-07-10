class HomeController < ApplicationController

  def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to lists_url, notice: 'Marked Items were successfully deleted.'
  end

  def trash_em_all
    @trash_em_all = List.all.destroy_all
    redirect_to lists_url, notice: 'All were successfully deleted.'
  end
end