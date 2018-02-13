<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateWalletsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('wallets', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('type', 10)->nullable();
			$table->string('name')->nullable();
			$table->string('wallet_username')->nullable();
			$table->string('wallet_password')->nullable();
			$table->string('wallet_ip', 45)->nullable();
			$table->string('port', 45)->nullable();
			$table->text('download_wallet_client', 65535);
			$table->text('logo_coin', 65535);
			$table->boolean('is_moneypaper')->default(0);
			$table->integer('limit_confirmations')->default(3);
			$table->boolean('enable_deposit')->default(1);
			$table->boolean('enable_withdraw')->default(1);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('wallets');
	}

}
