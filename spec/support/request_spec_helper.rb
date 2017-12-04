module RequestSpecHelper
  # porse JSON reponse to ruby hash

  def json
    JSON.parse(response.body)
  end
end