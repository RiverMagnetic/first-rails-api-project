# frozen_string_literal: true

class ItemsController < ProtectedController
  before_action :set_item, only: %i[show update destroy]

  # GET /items
  def index
    @items = current_user.items.all

    render json: @items
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    # @item = Item.new(item_params)
    # @item.user_id = current_user.id

    @item = current_user.items.build(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = current_user.items.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through. This is for creating
  # and updating.
  def item_params
    params.require(:item).permit(:id, :item_name, :description)
  end
end
