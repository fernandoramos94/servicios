<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNeighborhoodTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('neighborhood', function (Blueprint $table) {
            $table->increments('id');
            $table->string('barrio');
            $table->integer('id_localidad')->unsigned();
            $table->timestamps();
            $table->foreign('id_localidad')->references('id')->on('location');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('neighborhood');
    }
}
