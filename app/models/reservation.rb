class Reservation < ApplicationRecord

    def self.reservations
  
      reservations = Table.all
  
      reservation_data = []
      reservations.each do |reservation|
        reservations_hash = {}
        reservations_hash.merge!(day: reservation.ReservationDate.strftime("%Y-%m-%d"), time: reservation.ReservationTime)
        reservation_data.push(reservations_hash)
      end
      reservation_data
    end
  
  end
  