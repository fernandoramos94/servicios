<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateShopTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shop', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('empresa');
            $table->string('nit');
            $table->string('direccion');
            $table->string('telefono');
            $table->string('nombre');
            $table->string('celular');
            $table->text('descripcion');
            $table->string('correo');
            $table->string('redes_sociales');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('shop');
    }
}
