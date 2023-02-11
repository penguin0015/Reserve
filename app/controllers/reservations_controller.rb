class ReservationsController < ApplicationController
    def index
      @reservations = Reservation.all
      @day = "2023-02-14"
    end
  
    def show
      @reservation = Reservation.find(params[:id])
    end
  
    def new
      @reservation = Reservation.new
      @day = params[:day]
    end
  
    def edit
      @reservation = Reservation.find(params[:id])
    end

    def create
      @reservation = Reservation.create(reservation_params)
      if @reservation.save
        redirect_to reservations_path, notice: "#{@reservation.name}様の予約の登録が完了しました。"
      else
        render 'new'
      end
    end
  
    def update
      reservation = Reservation(params[:id])
      reservation.update!(reservation_params)
      redirect_to reservations_path, notice: "「#{reservation.name}様」の予約者情報を変更しました。"
    end

    def destroy
      reservation = Reservation.find(params[:id])
      reservation.destroy
      redirect_to reservations_path, notice: "削除しました。"
    end
  
    private
  
    def reservation_paramater
      params.require(:reservation).permit(:title, :context, :start_time)
    end

    def reservation_params
      params.require(:reservation).permit(:name, :table, :number, :time, :tel, :description)
    end

  end
  