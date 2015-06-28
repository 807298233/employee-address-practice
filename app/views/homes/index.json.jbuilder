json.partial! "message/status", response_status: @response_status

data = @data

json.data do

  if data.present?

    json.businesses data do | business |

      json.( business, :name, :category )

    end

  end

end

