<?php 
class Locstock extends ActiveRecord{
	public function buscar_por_stockid($stockid){
		return $this->find("conditions: stockid='$stockid'");
	}
	public function sumar_quantity_by_stockid($stockid){
		$stockids = $this->buscar_por_stockid($stockid);
		$suma = 0;
		//var_dump(count($stockids));die;
		foreach ($stockids as $key => $value) {
			$suma = $suma + (int)$value->quantity;
		}
		return $suma;
	}
}


 ?>