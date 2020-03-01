describe('Moodle Escola Pia Santa Anna', () => {
  it('Visit Moodle Escola Pia Santa Anna', () => {
    cy.visit('https://mataro.escolapia.cat/');
	cy.get('#menu-item-4623').click();
    cy.get('#menu-item-8138').click();
    cy.get("#NombreUsuario").type('jorge.castro');
    cy.get("input[type='submit']").click();
    cy.contains('El camp Contrasenya éasdasdad');
  });
});