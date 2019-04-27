<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReservesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reserves', function (Blueprint $table) {
            $table->bigIncrements('res_number');
            $table->integer('reader_id');
            $table->integer('document_id');
            $table->integer('copy_no');
            $table->integer('lib_id');
            $table->timestamps();

            $table->foreign('reader_id')->references('reader_id')->on('readers');
            $table->foreign(['document_id', 'copy_no', 'lib_id'])->references(['document_id', 'copy_no', 'lib_id'])
                ->on('copies');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('reserves');
    }
}
