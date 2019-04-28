<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvEditorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inv_editors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('document_id');
            $table->integer('issue_no');
            $table->string('ie_name', 100);
            $table->timestamps();

            $table->foreign(['document_id','issue_no'])->references(['document_id','issue_no'])
                ->on('journal_issues');
            $table->unique(['document_id', 'issue_no', 'ie_name']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('inv_editors');
    }
}
