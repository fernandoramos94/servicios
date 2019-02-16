<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNeighborhoodCategorieTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('neighborhood_categorie', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('id_categorie')->unsigned();
            $table->integer('id_neighborhood')->unsigned();
            $table->foreign('id_categorie')->references('id')->on('categorie');
            $table->foreign('id_neighborhood')->references('id')->on('neighborhood');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('neighborhood_categorie');
    }
}
