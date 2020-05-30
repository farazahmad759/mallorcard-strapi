"use strict";

/**
 * Read the documentation (https://strapi.io/documentation/3.0.0-beta.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  applyDiscount: async (ctx) => {
    const discount = ctx.request.body.discount / 100;
    // get all the activities
    const activities = await strapi.query("activities").find();
    // iterate through all activities, and apply discount (price * discount)
    // strapi query methods return promise, so we use async-await
    // when we use await in map, it returns array of promises
    const promises = activities.map(async (item) => {
      // each activity item's price is updated using the discount
      const updated = await strapi.query("activities").update(
        { id: item.id },
        {
          price: item.price * discount,
        }
      );
      const actAndPrice = {
        id: item.id,
        price: item.price,
      };
      return actAndPrice;
    });
    // finally we wait for array of promises to resolve,
    // and get back the updated activies
    const modifiedActivities = await Promise.all(promises);
    // return modifiedActivities; // optionally get back all updated entries (NOT ideal)
    return (
      "Discount of " + discount * 100 + "% has been applied to all activities"
    );
  },
};
