<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('clients', function (Blueprint $table) {
            //
            $table->string('name', 100);
            $table->string('second_name', 100)->nullable();
            $table->string('first_last_nam', 100);
            $table->string('second_last_name', 100);
            $table->string('email', 100);
            $table->string('password', 100);
            $table->string('phone_number', 100);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('clients', function (Blueprint $table) {
            //
            $table->dropColumn(['name',
            'second_name',
            'first_last_nam',
            'second_last_name',
            'email',
            'password',
            'phone_number']);
        });
    }
}
