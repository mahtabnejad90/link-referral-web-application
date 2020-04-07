require 'nokogiri'
require 'open-uri'

class LinksController < ApplicationController
  include LinksHelper
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all
  end

  # GET /links/1
  # GET /links/1.json
  def show
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
  end

  # link /links
  # link /links.json
  def create
    @link = Link.new(link_params)
    parsed_data = Nokogiri::HTML.parse(open(@link.url))
    @link.title = parsed_data.title

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'link was successfully created.' }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def listing
    @base_url = params[:url]
    @link = Link.where(url: @base_url).first
    
    if !(@link.present?)
      @link = Link.new(link_params)
    end

    base_url_arr = @base_url.split('/')
    base_url_str = base_url_arr.last
    
    begin
      parsed_data = Nokogiri::HTML.parse(open(@base_url))
      @url_title = parsed_data.title
      @link.title = parsed_data.title if @link.title.blank?
      
      # Trim all the links from page
      nodeset = parsed_data.xpath('//a')
      all_links = nodeset.map {|element| element["href"]}.compact.uniq
      relative_links = all_links.select { |link| link.start_with?('/') }
      top_level_regx = /#{@base_url}\/.*$/
      
      @valid_links = []
      
      all_links.each do |link|
        if relative_links.include? link
          link_arr = link.split('/')
          link_arr.each do |lk|
            link_arr.delete(lk) if lk.include? base_url_str
          end

          link = @base_url + link_arr.join('/')
          link = link.split('/')
          link = link.each_slice(4).to_a
          
          if link.first.last != ''
            @valid_links.push(link.first.join('/'))
          else
            link.first.push(link.second.first)
            @valid_links.push(link.first.join('/'))
          end
        else  
          link = link.split('/')
          link = link.each_slice(4).to_a
          
          if link.first.last != ''
            @valid_links.push(link.first.join('/')) if link.first.include? base_url_str
          else
            link.first.push(link.second.first)
            @valid_links.push(link.first.join('/')) if link.first.include? base_url_str
          end
        end
      end
      
      @valid_links = @valid_links.select{|l| top_level_regx =~ l }.uniq
      @link.all_links = @valid_links
      @link.save

      render :search
    rescue
      render :search
    end    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      if params[:id] != 'listing'
        @link = Link.find(params[:id])
      else
        render :search
      end
    end

    # Only allow a list of trusted parameters through.
    def link_params
      params.permit(:url)
    end
end
