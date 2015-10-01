class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # get '/airports' => 'application#airports'
  def airports
    query = params[:name]
    @airports = Airport.where("name LIKE ? OR icao_code = ? OR iata_code = ?", '%' + query + '%', query, query )
    if @airports
      render :json => @airports
    else
      render :json => {:error => "Airports not found for given parameter"}.to_json, :status => 404
    end
  end

  #get '/cities' => 'application#cities'
  def cities
    query = params[:name]
    @cities = City.where("name LIKE ?", '%' + query + '%')
    if @cities
      render :json => @cities
    else
      render :json => {:error => "Cities not found for given parameter"}.to_json, :status => 404
    end
  end

  #get '/countries' => 'application#countries'
  def countries
    query = params[:name]
    @countries = Country.where("formal LIKE ?", '%' + query + '%')
    if @countries
      render :json => @countries
    else
      render :json => {:error => "Countries not found for given parameter"}.to_json, :status => 404
    end
  end

  # get '/lakes' => 'application#lakes'
  def lakes
    query = params[:name]
    @lakes = Lake.where("name LIKE ?", '%' + query + '%')
    if @lakes
      render :json => @lakes
    else
      render :json => {:error => "Lakes not found for given parameter"}.to_json, :status => 404
    end
  end


  # get '/ports' => 'application#ports'
  def ports
    query = params[:name]
    @ports = Port.where("name LIKE ?", '%' + query + '%')
    if @ports
      render :json => @ports
    else
      render :json => {:error => "Ports not found for given parameter"}.to_json, :status => 404
    end
  end

  #get '/regions' => 'application#railroads'
  def regions
    query = params[:name]
    @regions = Airport.where("name LIKE ?", '%' + query + '%')
    if @regions
      render :json => @regions
    else
      render :json => {:error => "Region not found for given parameter"}.to_json, :status => 404
    end
  end

  # get '/timezones' => 'application#timezones'
  def timezone
    query = params[:name]
    @timezones = Timezone.where("name_alt LIKE ?", '%' + query + '%')
    if @timezones
      render :json => @timezones
    else
      render :json => {:error => "Time zone not found for given parameter"}.to_json, :status => 404
    end
  end


end
