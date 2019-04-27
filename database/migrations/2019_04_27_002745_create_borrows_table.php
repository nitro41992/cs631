<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBorrowsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('borrows', function (Blueprint $table) {
            $table->bigIncrements('bor_number');
            $table->integer('reader_id');
            $table->integer('document_id');
            $table->integer('copy_no');
            $table->integer('lib_id');
            $table->dateTime('bd_time');
            $table->dateTime('rd_time');
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
        Schema::dropIfExists('borrows');
    }
}
