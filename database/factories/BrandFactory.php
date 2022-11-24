<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Brand>
 */
class BrandFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->word(2),
            'description'=>$this->faker->sentence(5),
            'image'=>$this->faker->imageUrl(250,250),
            'status'=>$this->faker->randomElement([0,1]),
        ];
    }
}
