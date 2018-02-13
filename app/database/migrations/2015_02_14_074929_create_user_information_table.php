<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUserInformationTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('user_information', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('user_id');
			$table->string('address_1');
			$table->string('address_2');
			$table->string('city');
			$table->integer('postal_code');
			$table->string('country');
			$table->string('state');
			$table->date('date_birth');
			$table->string('government_photo_1');
			$table->string('government_photo_2');
			$table->string('utility_bill');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('user_information');
	}

}
