function showPlayersForm () {

  $('[data-hook~=player-form]').removeClass('hidden')
  var tournament_id = $(this).attr('value')
  $('.form-group').children('p').attr('id', tournament_id)



}

function addPlayerTourney(event) {
  event.preventDefault()
  var tournamentId = $('.form-group').children('p').attr('id');
  var $form = $('[data-hook~=player-form]')
  // var $formAlerts = $('[data-hook~=form-alerts]')
  var data = $form.serialize()
  var id = $(this).children('select').val();
  $.ajax({
    type: 'post',
    url: '/api/tournaments/addPlayer',
    data: {
      id: id,
      tourney_id: tournamentId
    },
    success: function(response){
      console.log('PIPARRACO');
    }

  })

  // var request = $.post('/api/tournaments/addPlayer', data)
}



  //
  // var request = $.ajax({
  //     url: '/api/players/indexs',
  //     type: 'GET',
  //   });
  //
  // console.log('request', request);
  // showPlayers(request)
  //
  //
  //
  // function showPlayers (players) {
  //   var html
  //
  //   if (players.length === 0) {
  //     html = buildErrorHtml('Looks like there aren\'t any players yet.')
  //   } else {
  //     html = buildAddPlayerHtml(players)
  //   }
  //
  //   console.log(html)
  //
  //
  // }
