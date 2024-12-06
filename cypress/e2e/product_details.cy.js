describe("Product Details Page", () => {
  it("Should navigate to the product's detail page when a product is clicked", () => {
    // Visit the home page
    cy.visit("/");

    // Click on the first product article
    cy.get(".products article").first().click();

    // Verify the URL includes "/products/"
    cy.url().should("include", "/products/");

    // Ensure the product detail page is visible
    cy.get(".product-detail").should("be.visible");
  });
});
