<?php

class Database 
{
	private $_dtb;

	public function __construct($dtbName, $login, $passeword)
	{
		try
		{
			$this->_dtb = new PDO('mysql:host=localhost; dbname='.$dtbName.'; charset=utf8', $login, $passeword);
		}
		catch (Exeption $e)
		{
			echo('<div><p>Nous sommes désolés une érreur est survenus :' . $e->getMessage().'.</p></div>');
		};
	}

	public function __queryAll($request, $condition)
	{
		$rq = $this->_dtb->prepare($request);
		$rq->execute(array($condition));
		$response = $rq->fetchAll();
		$rq->closeCursor();
		return $response;
	}

	public function __queryOne($request, $condition)
	{
		$rq = $this->_dtb->prepare($request);
		$rq->execute(array($condition));
		$response = $rq->fetch();
		$rq->closeCursor();
		return $response;
	}

	public function __selectAll($table)
	{
		$rq = $this->_dtb->prepare('SELECT*FROM '.$table);
		$rq->execute();
		$response = $rq->fetchAll();
		$rq->closeCursor();
		return $response;
	}

	public function __selectOne($table, $title)
	{
		$rq = $this->_dtb->prepare('SELECT '.$title.' FROM '.$table);
		$rq->execute();
		$response = $rq->fetchAll();
		$rq->closeCursor();
		return $response;
	}
}

