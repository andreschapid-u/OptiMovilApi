<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            //
            $table->string('name', 100);
            $table->string('description', 500)->nullable();
            $table->integer('image')->nullable();
            $table->string('image_path', 500)->nullable();
            $table->integer('stock')->default(15);

            $table->integer('price')->default(15);
            $table->foreignId('category_id')->unique();
            $table->foreignId('type_id')->unique();
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            $table->foreign('type_id')->references('id')->on('types')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn(['name',
            'description',
            'image',
            'image_path',
            'stock',
            'price',
            'category_id',
            'type_id']);
        });
    }
}
