<?php 
class Locations extends ActiveRecord{
	public function getForcombo(){
		$r = $this->find("columns: loccode,locationname");
		$registros = array(""=>"Seleccione");
		foreach ($r as $key => $value) {
			$registros[$value->loccode] = $value->locationname;
		}
		return $registros;
	}
}

 ?>