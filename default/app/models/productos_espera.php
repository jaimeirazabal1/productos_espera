<?php 
class ProductosEspera extends ActiveRecord{
	public function fecha_repetida($fecha){
		if ($this->find("conditions: fecha = '$fecha'")) {
			return true;
		}
		return false;
	}
}


 ?>