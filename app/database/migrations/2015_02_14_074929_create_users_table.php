<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUsersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('firstname');
			$table->string('lastname');
			$table->string('username');
			$table->string('email');
			$table->string('password');
			$table->string('confirmation_code');
			$table->boolean('verified');
			$table->boolean('confirmed')->default(0);
			$table->boolean('banned')->default(0);
			$table->string('authy');
			$table->timestamps();
			$table->dateTime('lastest_login')->default('0000-00-00 00:00:00');
			$table->string('timeout', 50);
			$table->string('referral', 100)->nullable();
			$table->string('trade_key');
			$table->string('ip_lastlogin');
			$table->string('facebook_id');
			$table->string('google_id');
			$table->string('remember_token', 100)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('users');
	}

}
