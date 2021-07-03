export class GitHub {

	visit(): void {
		cy.visit('https://github.com');
	}

	visitLogin(): void {
		cy.visit('https://github.com/login');
	}

	get username(): CypressElement {
		return cy.get(Selectors.Username);
	}

	get password(): CypressElement {
		return cy.get(Selectors.Password);
	}

	get loginButton(): CypressElement {
		return cy.get(Selectors.LoginButton);
	}

}

enum Selectors {
	Username = '[id="login_field"]',
	Password = '[id="password"]',
	LoginButton = '[href="/signup?source=login"]',
}

type CypressElement = Cypress.Chainable<JQuery<HTMLElement>>;
