<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChiefEditorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chief_editors', function (Blueprint $table) {
            $table->bigIncrements('editor_id');
            $table->string('e_name', 100);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('journal_volumes', function (Blueprint $table) {
            $table->dropForeign(['editor_id']);
        });
        Schema::dropIfExists('chief_editors');
    }
}
