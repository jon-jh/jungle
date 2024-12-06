describe("Jungle Site Home Page", () => {
  it("Visits the home page at http://127.0.0.1:3000/", () => {
    cy.visit("/");
  });

  it("Finds products on the page", () => {
    cy.visit("/");
    cy.get(".products article").should("be.visible");
  });
  // this wouldn't work on it's own because each test starts with a clean/empty database so that none of the tests are affected by each other. Need to first modify our Cypress initializer file in the config/initializers/ folder to create a category and some products when Cypress starts.

  
});
