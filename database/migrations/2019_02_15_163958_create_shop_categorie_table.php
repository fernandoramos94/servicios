<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateShopCategorieTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shop_categorie', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('id_shop')->unsigned();
            $table->integer('id_barrio')->unsigned();
            $table->integer('id_categorie')->unsigned();
            $table->foreign('id_shop')->references('id')->on('shop');
            $table->foreign('id_categorie')->references('id')->on('categorie');
            $table->foreign('id_barrio')->references('id')->on('neighborhood');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('shop_categorie');
    }
}
