<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateShopImgTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shop_img', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('id_shop')->unsigned();
            $table->string('url_imagen');
            $table->foreign('id_shop')->references('id')->on('shop');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('shop_img');
    }
}
