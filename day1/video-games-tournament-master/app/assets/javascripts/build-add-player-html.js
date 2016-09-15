
function buildAddPlayerHtml(players){
  function buildOption (previous, player) {
    return previous + buildPlayerHtml(player)
  }

  var listOptions = players.reduce(buildOption, '')

  var form = '<form action="demo_form.asp" id="playerform">'
  return '<select name="player_select" form="playerform">\
      ' + listOptions + '\</select>'
}
