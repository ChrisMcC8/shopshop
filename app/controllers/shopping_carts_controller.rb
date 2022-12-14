# frozen_string_literal: true

# Controller for the shopping cart and its methods. Use this instead of cart.
class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: %i[show edit update destroy]

  # GET /shopping_carts or /shopping_carts.json
  def index
    @shopping_carts = ShoppingCart.all
  end

  # GET /shopping_carts/1 or /shopping_carts/1.json
  def show; end

  # GET /shopping_carts/new
  def new
    @shopping_cart = ShoppingCart.new
  end

  # GET /shopping_carts/1/edit
  def edit; end

  # POST /shopping_carts or /shopping_carts.json
  def create
    @shopping_cart = ShoppingCart.new(shopping_cart_params)

    respond_to do |format|
      if @shopping_cart.save
        format.html do
          redirect_to shopping_cart_url(@shopping_cart),
                      notice: "Shopping cart was successfully created."
        end
        format.json { render :show, status: :created, location: @shopping_cart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_carts/1 or /shopping_carts/1.json
  def update
    respond_to do |format|
      if @shopping_cart.update(shopping_cart_params)
        format.html do
          redirect_to shopping_cart_url(@shopping_cart),
                      notice: "Shopping cart was successfully updated."
        end
        format.json { render :show, status: :ok, location: @shopping_cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_carts/1 or /shopping_carts/1.json
  def destroy
    @shopping_cart.destroy if @shopping_cart.id eql? session[:ShoppingCart_id]
    session[:ShoppingCart_id] = nil

    respond_to do |format|
      format.html do
        redirect_to shopping_carts_url, notice: "Shopping cart was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_shopping_cart
    @shopping_cart = ShoppingCart.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def shopping_cart_params
    params.fetch(:shopping_cart, {})
  end
end
