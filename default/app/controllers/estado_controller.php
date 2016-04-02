<?php 
class EstadoController extends AppController{

	public function lista(){
		$this->estados = Load::model("estado")->find();
	}
	public function nuevo(){
		if (Input::hasPost("estado")) {
			$nuevo = Load::model("estado",Input::post("estado"));
			if ($nuevo->save()) {
				Flash::valid("Estado agregado");
			}else{
				Flash::error("No se agrego el estado");
			}
			Router::toAction("lista");
		}
	}
	public function editar($id){
		if (Input::hasPost("estado")) {
			$nuevo = Load::model("estado",Input::post("estado"));
			if ($nuevo->save()) {
				Flash::valid("Estado editado");
			}else{
				Flash::error("No se edito el estado");
			}
			Router::toAction("lista");
		}
		$this->estado = Load::model("estado")->find($id);

	}
}


 ?>