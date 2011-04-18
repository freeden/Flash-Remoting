<?php
 
class Test
{
 
	function __construct()
	{
		$this->methodTable = array(
 
				"test" => array(
				"description" => "Tests service",
				"access" => "remote"
			)
		);
	}
 
	public function test($arg1, $arg2)
	{
		return $arg1 . " and " . $arg2;
	}
	
	function test($params)
	{
		return $params['arg1'] . " and " . $params['arg2'];
	}

	function arrayTest()
	{
		$result = array(
			'test' => 'wae7tauxuyh',
			'numtest' => 123,
			'hello' => 'world'
		);
		
		$result['multi'] = array('test','123');
		return $result;
	}
 
	function objectTest()
	{
		$result = new stdClass;
		$result->wtf = "Does this work";
		$result->hello_world = "can you see me?";
		$result->arrTest = array(
			'test' => '1asd23acas',
			'numtest' => 123,
			'hello' => 'world'
		);
		return $result;
	}

}
 
?>