<?php
require 'config.php';
require 'DbConnect.class.php';
//die('Die In Place');
$DB = new DbConnect();
$qVals = array();
$qOpts = array();
$importMonsters = isset($_POST['monsterList']) ? $_POST['monsterList'] : false;
$sql = 'INSERT INTO Monsters (chapter,name,ace,points_total,what_see,appearance,armor,threshold,intelligence,spell_pyramid,strength,rips,rips_weak,weapons,dmg_oneh,dmg_twoh,carrier,offensive,defensive,vulnerabilities,skills,rank,creature_type) VALUES ';

foreach($importMonsters as $monsterRaw){
    $comma = '';
    $sql .= '(';
    foreach($monsterRaw as $monsterStat){
        $sql .= $comma.'?';
        $qVals[] = empty($monsterStat['value']) && $monsterStat['value'] != 0 ? null : $monsterStat['value'];
        $comma = ',';
    }
    $sql .= '),';
}

//error_log(print_r($importMonsters,1));
//error_log($sql);
//error_log(print_r($qVals,1));
if($importMonsters){
    $monsterInsertRes = $DB->query( rtrim($sql, ','), $qVals, $qOpts );
}
?>