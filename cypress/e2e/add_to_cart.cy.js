describe("Add To Card From Home Page", () => {
  it("Should update the cart with item when the add to cart button is clicked on the home page", () => {
    // Visit the home page
    cy.visit("/");
    // Gets the first .products article
    cy.get(".products article")
      .first()
      .within(() => {
        cy.contains("button", "Add").click();
      });
      // Gets the add button and clicks it
    cy.get(".nav-link").contains("My Cart (1)").should("be.visible");
    // Check that the "My Cart" in the nav bar updated
  });
});
