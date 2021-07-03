import { GitHub } from '@pages/github';

describe('GitHub Page', () => {

	const gitHub = new GitHub();

	before(() => {
		gitHub.visit();
	});

	it('See elements on login page', () => {
		gitHub.visitLogin();
		gitHub.username.should('be.visible');
		gitHub.password.should('be.visible');
		gitHub.loginButton.should('be.visible');
	});
});
