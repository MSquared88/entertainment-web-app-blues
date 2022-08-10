import { faker } from "@faker-js/faker";

describe("smoke tests", () => {
  afterEach(() => {
    cy.cleanupUser();
  });

  it("should allow you to register and login", () => {
    const loginForm = {
      email: `${faker.internet.userName()}@example.com`,
      password: faker.internet.password(),
    };
    cy.then(() => ({ email: loginForm.email })).as("user");

    cy.visit("/");
    cy.findByRole("link", { name: /sign up/i }).click();

    cy.findAllByPlaceholderText(/email address/i).type(loginForm.email);
    cy.findAllByPlaceholderText(/password/i).type(loginForm.password);
    cy.findByRole("button", { name: /create account/i }).click();

    cy.findByText(`Continue as ${loginForm.email}`).click();
    cy.get('[src="../assets/image-avatar.png"').click();
    cy.findByRole("button", { name: /logout/i }).click();
    cy.findByRole("link", { name: /log in/i });
  });

  it("should allow you to add a bookmark", () => {
    const loginForm = {
      email: `${faker.internet.userName()}@example.com`,
      password: faker.internet.password(),
    };
    cy.then(() => ({ email: loginForm.email })).as("user");

    cy.visit("/");
    cy.findByRole("link", { name: /sign up/i }).click();

    cy.findAllByPlaceholderText(/email address/i).type(loginForm.email);
    cy.findAllByPlaceholderText(/password/i).type(loginForm.password);
    cy.findByRole("button", { name: /create account/i }).click();

    cy.findByText(`Continue as ${loginForm.email}`).click();

    cy.findAllByLabelText("add Community of Ours to bookmarks").click();
    cy.findAllByLabelText("remove Community of Ours from bookmarks").click();
    cy.findAllByLabelText("add Community of Ours to bookmarks");
  });
});
