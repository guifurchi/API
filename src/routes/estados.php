<?php

use Slim\Http\Request;
use Slim\Http\Response;
use App\Models\Estado;

// Rotas para estados
$app->group('/api/v1', function(){
	
	// Lista estados
	$this->get('/estados/lista', function($request, $response){
		$estados = Estado::get();
		return $response->withJson( $estados );

	});

	// Adiciona um estado
	$this->post('/estados/adiciona', function($request, $response){
		
		$dados = $request->getParsedBody();

		//Validar

		$estado = Estado::create( $dados );
		return $response->withJson( $estado );

	});

	// Recupera estado para um determinado ID
	$this->get('/estados/lista/{id}', function($request, $response, $args){
		
		$estado = Estado::findOrFail( $args['id'] );
		return $response->withJson( $estado );

	});

	// Atualiza estado para um determinado ID
	$this->put('/estados/atualiza/{id}', function($request, $response, $args){
		
		$dados = $request->getParsedBody();
		$estado = Estado::findOrFail( $args['id'] );
		$estado->update( $dados );
		return $response->withJson( $estado );

	});

	// Remove estado para um determinado ID
	$this->get('/estados/remove/{id}', function($request, $response, $args){

		$estado = Estado::findOrFail( $args['id'] );
		$estado->delete();
		return $response->withJson( $estado );

	});


});
