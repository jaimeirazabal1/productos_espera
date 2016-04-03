<?php 
class EstadoProductos extends ActiveRecord{
	public function getById($id){
		$r = $this->find_by_sql("SELECT estado.nombre,estado.color,estado.id  from estado_productos INNER JOIN estado on estado_productos.estado_id = estado.id where estado_productos.id = '$id'");

		return $r;

	}

	public function agregar_nuevo($estado_id,$estado_producto_id){
		$registro = new EstadoProductos();
		$registro->estado_id = $estado_id;
		$registro->productos_espera_id = $estado_producto_id;
		$registro->creado = date("Y-m-d H:i:s");
		if ($registro->save()) {
			return $registro->last_id();
		}else{
			Flash::error("Ocurrio un error actualizando el estado");
			return NULL;
		}
	}
}


 ?>