<?php
echo "<pre>";

/* connect to the mongo server */
$server = getDbConnection();

/* select the "test" database */
$db = $server->test; /* this will never fail, it will just create a new db if not found */

/* select the "test" collection in the "test" database */
$collection = $db->test; /* this will never fail, it will just create a new collection if not found */

/* add a record */
$randomNumber = rand();

echo "Adding ${randomNumber} to the test.test db collection . . . . . ";

$obj = array('randomNumber' => $randomNumber);
$collection->insert($obj);

echo "Done\n\n\n";

/* retrieve all records */
echo "Retrieving all records in the test.test db collection\n";

$cursor = $collection->find();
foreach ($cursor as $id => $value) {
	echo "\n\n${id}: ";
	print_r($value);
}

echo "</pre>";


/* * * * */


function getDbConnection() {
	try {
		$response = new Mongo();
	} catch (MongoConnectionException $e) {
		print_r($e);
		die();
	}

	return $response;
}
