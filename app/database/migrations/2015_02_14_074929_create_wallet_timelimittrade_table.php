<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateWalletTimelimittradeTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('wallet_timelimittrade', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('wallet_id');
			$table->integer('limit_amount');
			$table->string('time_limit');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('wallet_timelimittrade');
	}

}
