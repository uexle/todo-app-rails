class ItemsController < ApplicationController
  before_action :set_item, only: [ :move_up, :move_down ]

  def create
    @item = Item.create(item_params)

    if @item.save
      redirect_to list_path(@item.list), notice: "Item was successfully created."
    else
      redirect_to list_path(@item.list), status: :unprocessable_entity
    end
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to list_path(@item.list), notice: "Item was successfully updated."
    else
      redirect_to list_path(@item.list), status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy!

    redirect_to list_path(@item.list), notice: "Item was successfully destroyed."
  end

  def move_up
    @item.move_higher
    redirect_to list_path(@item.list)
  end

  def move_down
    @item.move_lower
    redirect_to list_path(@item.list)
  end

  private

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:text, :done, :list_id, :position)
    end
end
