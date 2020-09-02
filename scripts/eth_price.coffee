module.exports = (robot) ->
  robot.respond /(.*)eth price/i, (res) ->
    robot.http("https://api.etherscan.io/api?module=stats&action=ethprice&apikey="+process.env.ETHERSCAN_API_KEY)
      .header('Accept', 'application/json')
      .get() (err, response, body) ->
        # error checking code here

        data = JSON.parse body
        res.send "$ #{data.result.ethusd}"
