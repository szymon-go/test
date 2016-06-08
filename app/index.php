<?php

//require_once "./UUID.php";
require './vendor/autoload.php';

use Domain\UUID;

$uuid = new UUID();
$rand = $uuid->generate();

echo "<h1>Unique use id is: $rand. ;)</h1>";
echo "<img href=\"http://dnmonster:8080/monster/test?size=80\" />";

