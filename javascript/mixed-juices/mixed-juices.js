// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */

const JUICE_TIMES = {
    'Pure Strawberry Joy': 0.5,
    'Energizer': 1.5,
    'Green Garden': 1.5,
    'Tropical Island': 3,
    'All or Nothing': 5
};

const STANDARD_JUICE_TIME = 2.5;

export function timeToMixJuice(name) {
    return JUICE_TIMES.hasOwnProperty(name) ? JUICE_TIMES[name] : STANDARD_JUICE_TIME;
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */

const LIME_SLICES = {
    'small': 6,
    'medium': 8,
    'large': 10
};

export function limesToCut(wedgesNeeded, limes) {
    let n = 0;
    while (wedgesNeeded > 0 && n < limes.length) {
	wedgesNeeded -= LIME_SLICES[limes[n]];
	n++;
    }
    return n;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
    let n = 0;
    while (timeLeft > 0 && n < orders.length) {
	timeLeft -= timeToMixJuice(orders[n]);
	n++;
    }
    return orders.slice(n);
}
