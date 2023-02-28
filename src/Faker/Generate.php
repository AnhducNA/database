<?php

namespace Anhduc\Database\Faker;

use Faker\Factory;

require 'vendor/autoload.php';

class Generate
{
    private $faker;

    public function __construct()
    {
        $this->faker = Factory::create();
    }

    public function getName()
    {
        return $this->faker->name();
    }    public function getDate()
    {
        return $this->faker->date();
    }
}