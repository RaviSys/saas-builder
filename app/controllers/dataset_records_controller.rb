class DatasetRecordsController < ApplicationController
  before_action :set_dataset_record, only: [:show, :edit, :update, :destroy]
  before_action :set_dataset

  def index
    @dataset_records = model_class.all
  end

  def new
    @dataset_record = @dataset.dataset_records.build
  end

  def edit; end
  def show; end

  def create
    @dataset_record = @dataset.dataset_records.new(dataset_records_params)
    respond_to do |format|
      if @dataset_records.save
        format.html { redirect_to dataset_dataset_records_path, notice: "Dataset records saved successfully" }
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @dataset_records.update(dataset_records_params)
        format.html { redirect_to dataset_dataset_records_path, notice: "Dataset records updated successfully" }
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @dataset_records.destroy
    respond_to do |format|
      format.html { redirect_to dataset_dataset_records_path, notice: "Dataset records deleted successfully" }
    end
  end

  private

  def parent_model
    Dataset
  end

  def set_dataset
    @dataset = parent_model.find(params[:dataset_id])
  end

  def dataset_records_params
    params.require(:dataset_record).permit(:token, :dataset_id, field_values_attributes: [:id, :value, :field_id, :_destroy])
  end

  def set_dataset_record
    @dataset_records = set_dataset.dataset_records.find(params[:id])
  end
end
