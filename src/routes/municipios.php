<?php

use Slim\Http\Request;
use Slim\Http\Response;
use App\Models\Municipio;

// Rotas para municipios
$app->group('/api/v1', function(){
	
	// Lista municipios
	$this->get('/municipios/lista', function($request, $response){
		$municipios = Municipio::get();
		return $response->withJson( $municipios );

	});

	// Adiciona um municipio
	$this->post('/municipios/adiciona', function($request, $response){
		
		$dados = $request->getParsedBody();

		//Validar

		$municipio = Municipio::create( $dados );
		return $response->withJson( $municipio );

	});

	// Recupera municipio para um determinado ID
	$this->get('/municipios/lista/{id}', function($request, $response, $args){
		
		$municipio = Municipio::findOrFail( $args['id'] );
		return $response->withJson( $municipio );

	});

	// Atualiza municipio para um determinado ID
	$this->put('/municipios/atualiza/{id}', function($request, $response, $args){
		
		$dados = $request->getParsedBody();
		$municipio = Municipio::findOrFail( $args['id'] );
		$municipio->update( $dados );
		return $response->withJson( $municipio );

	});

	// Remove municipio para um determinado ID
	$this->get('/municipios/remove/{id}', function($request, $response, $args){

		$municipio = Municipio::findOrFail( $args['id'] );
		$municipio->delete();
		return $response->withJson( $municipio );

	});


});
