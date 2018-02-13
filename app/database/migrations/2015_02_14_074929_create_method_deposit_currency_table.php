<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMethodDepositCurrencyTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('method_deposit_currency', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('dname');
			$table->float('dfee', 10, 0)->default(0);
			$table->float('dmin', 10, 0)->default(0);
			$table->string('ddes');
			$table->float('dminfee', 10, 0)->default(0);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('method_deposit_currency');
	}

}
