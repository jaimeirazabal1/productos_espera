
<?php

/**
 * Controller por defecto si no se usa el routes
 * 
 */
class IndexController extends AppController
{

    public function index()
    {
    	if (Input::hasPost("productos_espera")) {
    		$registro = Load::model("productos_espera",Input::post('productos_espera'));
    		if ($registro->save()) {
    			Flash::valid("Registro realizado!"); 
                Input::delete();
    		}else{
    			Flash::error("No se llevo a cabo el registro!");
    		}

    	}
        $this->estados = Load::model("estado")->find("order: id asc","limit: 1");
        $this->almacenes = Load::model("locations")->getForCombo();
    }
    public function lista(){
    	$this->registros = Load::model("productos_espera")->find("join: left join estado on productos_espera.estado_id = estado.id",
    															"columns: productos_espera.id,
    																	  productos_espera.producto,
    																	  productos_espera.nombre_producto,
    																	  productos_espera.sucursal,
    																	  productos_espera.cliente,
    																	  productos_espera.telefono,
    																	  productos_espera.fecha,
    																	  estado.nombre",
                                                                "order: id desc");
    }
    public function ver($id){
    	if (Input::hasPost("productos_espera")) {
    		$post = Input::post("productos_espera");
    		$registro = Load::model("productos_espera")->find($post['id']);
    		$registro->estado_id = $post['estado_id'];
    		if ($registro->update()) {
    			Flash::valid("Estado Actualizado con exito!");
    		}else{
    			Flash::error("No se pudo actualizar el registro!");
    		}
    		Router::redirect("index/lista");
    	}
    	$this->productos_espera = Load::model('productos_espera')->find($id);
    }
    public function buscar_por_codigo_producto($codigo){
    	View::select(null,"json");
    	$this->data = Load::model("stockmaster")->find("conditions: stockid = '".$codigo."'");
    }

}

