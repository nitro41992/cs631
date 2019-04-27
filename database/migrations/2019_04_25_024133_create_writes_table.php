<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWritesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('writes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('author_id');
            $table->integer('document_id');
            $table->timestamps();

            $table->foreign('author_id')->references('author_id')->on('authors');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {

        Schema::dropIfExists('writes');
    }
}
