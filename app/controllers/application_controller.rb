class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :validate_params, :authenticate_api_key

  layout false

  # get '/airports' => 'application#airports'
  def airports
    @airports = Airport.find_by_fuzzy_name(params[:name])
    if @airports
      render :json => @airports
    else
      render :json => {:error => "Airports not found for given name"}.to_json, :status => 404
    end
  end

  #get '/cities' => 'application#cities'
  def cities
    @cities = City.find_by_fuzzy_name(params[:name])
    if @cities
      render :json => @cities
    else
      render :json => {:error => "Cities not found for given name"}.to_json, :status => 404
    end
  end

  #get '/countries' => 'application#countries'
  def countries
    @countries = Country.find_by_fuzzy_formal(params[:name])
    if @countries
      render :json => @countries
    else
      render :json => {:error => "Countries not found for given parameter"}.to_json, :status => 404
    end
  end

  # get '/lakes' => 'application#lakes'
  def lakes
    @lakes = Lake.find_by_fuzzy_name(params[:name])
    if @lakes
      render :json => @lakes
    else
      render :json => {:error => "Lakes not found for given name"}.to_json, :status => 404
    end
  end


  # get '/ports' => 'application#ports'
  def ports
    @ports = Port.find_by_fuzzy_name(params[:name])
    if @ports
      render :json => @ports
    else
      render :json => {:error => "Ports not found for given name"}.to_json, :status => 404
    end
  end

  #get '/regions' => 'application#railroads'
  def regions
    @regions = Airport.find_by_fuzzy_name(params[:name])
    if @regions
      render :json => @regions
    else
      render :json => {:error => "Region not found for given name"}.to_json, :status => 404
    end
  end

  # get '/timezones' => 'application#timezones'
  def timezone
    @timezones = Timezone.find_by_fuzzy_name_alt(params[:name])
    if @timezones
      render :json => @timezones
    else
      render :json => {:error => "Time zone not found for given parameter"}.to_json, :status => 404
    end
  end

  def authenticate_api_key
    if (KEY_GEO_API && params[:api_key] && KEY_GEO_API.exclude?(params[:api_key].to_s))
      render :json => {:error => "not unauthorized. Please ask admin for a correct API key"}.to_json, status: :unauthorized
    end
  end

  def validate_params
    unless params[:name] && params[:name].size > 0
      render :json => {:error => "You should supply a name parameter in your query"}.to_json, status: 404
    end
  end


end
