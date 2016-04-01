<?php

/**
 * Controller por defecto si no se usa el routes
 * 
 */
class IndexController extends AppController
{

    public function index()
    {
        
    }
    public function buscar_por_codigo_producto($codigo){
    	View::select(null,"json");
    	$this->data = Load::model("stockmaster")->find("conditions: stockid like '%".$codigo."%'");
    }

}
