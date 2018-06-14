class Api::SeriesController < Api::ApiController
  before_action :find_serie, only: [:show]

  def create
    Serie.transaction do
      @serie = Serie.create!(serie_params)
      (1..params[:serie][:number_of_seasons]).each do |number|
        season = Season.create!(season_number: number, title: "Temporada #{number}", serie_id: @serie.id)
        (1..params[:serie][:episodes_per_season]).each do |episode_number|
          Episode.create!(title: "Episódio #{episode_number}", episode_number: episode_number, season_id: season.id)
        end
      end
    end

    render :show, status: :created
  end

  def show
  end

  protected
  def find_serie
    @serie = Serie.find_by! id: params[:id]
  end

  def serie_params
    params.require(:serie).permit(:title, :about, :launch_date)
  end
end
