class ItemsController < ApplicationController
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

  private

    def item_params
      params.require(:item).permit(:text, :done, :list_id)
    end
end
