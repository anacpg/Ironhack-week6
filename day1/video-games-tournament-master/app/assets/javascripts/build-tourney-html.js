function buildTourneyHtml (tournament) {
  return '\
    <li>\
      <a href="/tournaments/' + tournament.id + '">' + tournament.name + '</a>\
    <button data-hook="tourney-delete" type="submit" name="tournament" value="'+  tournament.id + '">DELETE</button>\
    <button data-hook="tourney-add" type="submit" name="tournament" value="'+  tournament.id + '">ADD PLAYER</button>\
    </li>\
    '
}
