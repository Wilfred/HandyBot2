# Description:
#   Define terms via Urban Dictionary
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot urban define <term>  - Searches Urban Dictionary and returns definition
#
# Author:
#   Travis Jeffery (@travisjeffery)
#   Robbie Trencheny (@Robbie)
#
# Contributors:
#   Benjamin Eidelman (@beneidel)
#   Wilfred Hughes (@dontYetKnow)

module.exports = (robot) ->

  robot.respond /urban define (.*)/i, (msg) ->
    urbanDict msg, msg.match[1], (found, entry, sounds) ->
      if !found
        msg.send "\"#{msg.match[1]}\" not found"
        return
      msg.send "#{entry.definition}"
      if sounds and sounds.length
        msg.send "#{sounds.join(' ')}"

urbanDict = (msg, query, callback) ->
  msg.http("http://api.urbandictionary.com/v0/define?term=#{escape(query)}")
    .get() (err, res, body) ->
      result = JSON.parse(body)
      if result.list.length
        callback(true, result.list[0], result.sounds)
      else
        callback(false)

