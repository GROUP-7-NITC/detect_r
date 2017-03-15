<?php 
class Database{
	
	protected $db_name = 'detect-r';
	protected $db_user = 'root';
	protected $db_pass = '';
	protected $db_host = 'localhost';
	public $link;
	
	// Open a connect to the database.
	// Make sure this is called on every page that needs to use the database.
	public function __construct()
	
	{
		$this->connect();
	}
	public function connect() {
	
		$this->link = new mysqli( $this->db_host, $this->db_user, $this->db_pass, $this->db_name );
	
		  
	
		
	}
	public function insert($query)
	{
		return $this->link->query($query);
	}

}

?>