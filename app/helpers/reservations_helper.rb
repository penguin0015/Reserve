module ReservationsHelper
    def times
        times = ["11:00",
                 "12:00",
                 "13:00",
                 "14:00",
                 "17:00",
                 "18:00",
                 "19:00",
                 "20:00",
                 "21:00",
                 "22:00"]
    end

    def tables
        tables = {
                  "テーブルA" => 0,
                  "テーブルB" => 1,
                  "テーブルC" => 2,
                  "テーブルD" => 3,
                  "テーブルE" => 4,
                  "テーブルF" => 5
                 }
    end

    def check_reservation(reservations, day, time)
      result = false
      reservations_count = reservations.count

      if reservations_count > 1
        reservations.each do |reservation|
          result = reservation[:day].eql?(day.strtime("%Y-%m-%d")) && reservation[:time].eql?(time)
          return result if result
        end
      elsif reservations_count == 1
        result = reservation[:day].eql?(day.strftime("%Y-%m-%d")) && reservations[0][:time].eql?(time)
        return result if result
      end
      return result
    end
end
