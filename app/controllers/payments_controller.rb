class PaymentsController < ApplicationController
  before_action :set_booking_and_space

  def new
    @hash = Gmaps4rails.build_markers(@space) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
    end
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @booking.price_pennies, # or amount_pennies
      description:  "Payment for teddy #{@booking.table.id} for booking #{@booking.id}",
      currency:     "gbp"
    )

    @booking.update(payment: charge.to_json, state: 'paid')
    redirect_to space_booking_path(@space, @booking)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_space_order_payment_path(@booking)
  end

private

  def set_booking_and_space
    @space = Space.find(params[:space_id])
    @booking = Booking.where(state: 'pending').find(params[:booking_id])
  end
end
