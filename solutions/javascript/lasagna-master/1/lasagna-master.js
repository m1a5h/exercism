/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

export function cookingStatus(time)
{
    return time == 0 ? 'Lasagna is done.' : time > 0 ? 'Not done, please wait.': 'You forgot to set the timer.';
}


export function preparationTime(layers, average_time = 2)
{
    return layers.length * average_time;
}


const NOODLE = 50;
const SAUCE = 0.2;


export function quantities(ingredients)
{
    return {
	'noodles': ingredients.filter(i => i == 'noodles').length * NOODLE,
	'sauce' : ingredients.filter(i => i == 'sauce').length * SAUCE
    };
}


export function addSecretIngredient(friendsList, myList)
{
    myList.push(friendsList[friendsList.length-1]);
}


export function scaleRecipe(recipe, portions)
{
    return Object.fromEntries(
	Object.entries(recipe)
	    .map(([k,v]) => [k, v * portions / 2]));
}
