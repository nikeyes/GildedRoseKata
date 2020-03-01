describe('Moodle Escola Pia Santa Anna', () => {
    it('Visit Moodle Escola Pia Santa Anna', () => {
      cy.visit('https://www.google.com/');
      cy.get("input[name='q']").type('github nikeyes')
      cy.get("input[type='submit']").click();
    });
});