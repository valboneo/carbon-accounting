require 'csv'

class InfrastructuresController < ApplicationController
  before_action :set_infrastructure, only: %i[ show edit update destroy ]

  def index
    @infrastructures = Infrastructure.order(params[:sort] || :name)
    @total_energy = Infrastructure.sum(:energy_consumption)
    @total_carbon = Infrastructure.sum(:carbon_footprint)
  end

  def export_csv
    @infrastructures = Infrastructure.order(params[:sort] || :name)
    
    respond_to do |format|
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"infrastructures-#{Date.today}.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
  end

  def show
  end

  def new
    @infrastructure = Infrastructure.new
  end

  def edit
  end

  def create
    @infrastructure = Infrastructure.new(infrastructure_params)

    respond_to do |format|
      if @infrastructure.save
        format.html { redirect_to infrastructures_url, notice: t('infrastructures.notices.created') }
        format.json { render :show, status: :created, location: @infrastructure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @infrastructure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @infrastructure.update(infrastructure_params)
        format.html { redirect_to infrastructures_url, notice: t('infrastructures.notices.updated') }
        format.json { render :show, status: :ok, location: @infrastructure }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @infrastructure.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @infrastructure.destroy

    respond_to do |format|
      format.html { redirect_to infrastructures_url, notice: t('infrastructures.notices.deleted') }
      format.json { head :no_content }
    end
  end

  private

  def set_infrastructure
    @infrastructure = Infrastructure.find(params[:id])
  end

  def infrastructure_params
    params.require(:infrastructure).permit(:name, :infrastructure_type, :energy_consumption, :carbon_footprint, :location, :status)
  end
end
