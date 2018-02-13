<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMethodWithdrawCurrencyTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('method_withdraw_currency', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('wname');
			$table->float('wfee', 10, 0)->default(0);
			$table->float('wmin', 10, 0)->default(0);
			$table->string('wdes', 500);
			$table->float('wminfee', 10, 0)->default(0);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('method_withdraw_currency');
	}

}
