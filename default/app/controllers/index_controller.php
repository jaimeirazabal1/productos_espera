
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
            //echo $registro->fecha;
    		if (!$registro->fecha_repetida($registro->fecha) and $registro->save()) {

                $id = $registro->last_id();
                $estado_productos = Load::model("estado_productos",array('estado_id'=>$_POST['productos_espera']['estado_id'],
                                                                        'productos_espera_id'=>$id,
                                                                        'creado'=>date('Y-m-d H:i:s')));
                if ($estado_productos->save()) {
                    $id_ = $estado_productos->last_id();
                    $registro_ultimo = Load::model("productos_espera")->find($id);
                    $registro_ultimo->estado_producto_id = $id_;
                    if (!$registro_ultimo->update()) {
                        Flash::error("Ocurrio un error ".__LINE__);
                    } 
                }
    			Flash::valid("Registro realizado!"); 

    		}else{
    			Flash::error("No se llevo a cabo el registro!");

    		}
            Router::toAction("");
    	}
        $this->estados = Load::model("estado")->find("order: id asc","limit: 1");
        $this->almacenes = Load::model("locations")->getForCombo();
    }
    public function lista(){
    	$this->registros = Load::model("productos_espera")->find("order: id desc","join: inner join stockmaster on productos_espera.producto = stockmaster.stockid","columns: 
                                stockmaster.description as nombre_producto,
                                productos_espera.id,
                                productos_espera.producto,
                                productos_espera.sucursal,
                                productos_espera.cliente,
                                productos_espera.telefono,
                                productos_espera.estado_producto_id,
                                productos_espera.fecha,
                                productos_espera.observacion");

        $this->objeto_estados = Load::model("estado_productos");
    }
    public function ver($id){
    	if (Input::hasPost("productos_espera")) {
    		$post = Input::post("productos_espera");
    		$registro = Load::model("productos_espera")->find($post['id']);
            $id = Load::model('estado_productos')->agregar_nuevo($post['estado_id'],$post['id']);
            if ($id) {
                $registro->estado_producto_id = $id;
        		if ($registro->update()) {
        			Flash::valid("Estado Actualizado con exito!");
        		}else{
        			Flash::error("No se pudo actualizar el registro!");
        		}
            }else{
                Flash::error('Ocurrio un error agregando el nuevo estado a la base de datos!');
            }
    		Router::redirect("index/lista");
    	}
        $this->estados = Load::model("estado_productos")->find('join: inner join estado on estado_productos.estado_id = estado.id',"conditions: productos_espera_id = '$id' ","columns: estado_productos.creado, estado.nombre, estado.color, estado_productos.id","order: creado desc");
    	$this->productos_espera = Load::model('productos_espera')->
        find_first("order: id desc","join: inner join stockmaster on productos_espera.producto = stockmaster.stockid","columns: 
                                stockmaster.description as nombre_producto,
                                productos_espera.id,
                                productos_espera.producto,
                                productos_espera.sucursal,
                                productos_espera.cliente,
                                productos_espera.telefono,
                                productos_espera.estado_producto_id,
                                productos_espera.fecha,
                                productos_espera.observacion","conditions: id='$id'");
    }
    public function buscar_por_codigo_producto($codigo){
    	View::select(null,"json");
    	$this->data = Load::model("stockmaster")->find("conditions: stockid = '".$codigo."'");
    }

}

