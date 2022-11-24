<?php

namespace Database\Factories;

use App\Models\Brand;
use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'category_id'=>$this->faker->randomElement(Category::pluck('id')->toArray()),
            'brand_id'=>$this->faker->randomElement(Brand::pluck('id')->toArray()),
            'title'=>$this->faker->sentence(5),
            'description'=>$this->faker->paragraphs(3,true),
            'image'=>$this->faker->imageUrl(250,250),
            'code'=>$this->faker->word(),
            'status'=>$this->faker->randomElement([0,1]),
        ];
    }
}
