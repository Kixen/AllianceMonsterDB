function submitRows(){
    var monsterStatElems = $('.monster-stats'),
		allMonsters = [];
	monsterStatElems.each(function(){
		var statsArray = $(this).serializeArray();
		allMonsters.push(statsArray);
	});
	
    $.ajax({
        url:'./scripts/addMonster.php',
        data: {monsterList:allMonsters},
        method: "POST",
    }).done(function(data){
		window.location.reload(true);
    }).fail(function(jqXHR, textStatus){
    	console.log('it broke 0.0')
    });
}

$(function() {
    
    var $actionsBar = $('#actionsBar'),
        monsterRowTemplate = $('#addMonsterRowTemplate').html(),
        newMonsterHolder = $('#addMonsterHolder');
		
	$('#addMonsterRowTemplate').empty();
    $actionsBar.on('click', '#addRow', function(evt){
        newMonsterHolder.prepend(monsterRowTemplate);
    });
    $actionsBar.on('click', '#submitRows', function(evt){
        submitRows();
    });
    
});