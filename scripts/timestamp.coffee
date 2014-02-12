# Description:
#   Pretty print a unix timestamp.
#
# Commands:
#   hubot timestamp <unix time> - Pretty print a unix timestamp.
#
# Author:
#   wilfred
#

moment = require "moment"

module.exports = (robot) ->

  robot.respond /timestamp (.*)/i, (msg) ->
    timestamp = msg.match[1]

    # If we're given a time in milliseconds, convert it.
    if timestamp > 1000000000000
      timestamp = timestamp / 1000
      
    givenDate = moment.unix parseFloat(timestamp)
    if givenDate.isValid()
      msg.send(givenDate.format('h:mm:ss a, dddd [the] Do [of] MMMM YYYY ') +
        "(" + givenDate.from(moment()) + ")")
    else
      msg.send "Invalid timestamp."
