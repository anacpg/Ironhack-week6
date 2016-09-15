function deleteTournament(event){
  event.preventDefault();
  //$(event.currentTarget).attr('id');
  var tournamentId = $(this).val();

  // console.log(event.parent());

  $(this).parent().remove()

  var request = $.ajax({
      url: '/api/tournaments',
      type: 'DELETE',
      data: {id: tournamentId},
    });
    //parrafo.parentNode.removeChild(parrafo);
}
