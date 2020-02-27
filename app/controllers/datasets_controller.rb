class DatasetsController < ApplicationController
	before_action :set_dataset, only: [:show, :edit, :update, :destroy]

	def index
		@datasets = model_class.all
	end

	def new
		@dataset = model_class.new
	end

	def edit; end
	def show; end

	def create
		@dataset = model_class.new(dataset_params)
		respond_to do |format|
			if @dataset.save
				format.html { redirect_to datasets_path, notice: "Dataset saved successfully" }
			else
				format.html {render :new}
			end
		end
	end

	def update
		respond_to do |format|
			if @dataset.update(dataset_params)
				format.html { redirect_to datasets_path, notice: "Dataset updated successfully" }
			else
				format.html {render :edit}
			end
		end
	end

	def destroy
		@dataset.destroy
		respond_to do |format|
			format.html { redirect_to datasets_path, notice: "Dataset deleted successfully" }
		end
	end

	private

	def model_class
		Dataset
	end

	def dataset_params
		params.require(:dataset).permit(:name, :icon_image, :description, fields_attributes: [:id, :name, :field_type, :is_required, :position, :_destroy])
	end

	def set_dataset
		@dataset = model_class.find(params[:id])
	end

end
