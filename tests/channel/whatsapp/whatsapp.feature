Feature: WhatsApp Content validation

  Scenario: Validation works for all eligible test-JSONs (High Lvl)
    Given I have a Rich Content validator for WhatsApp
    When I try to validate each eligible test-JSON
    Then The validator either validates or returns errors for them as expected on the WhatsApp channel

  Scenario: Validation with exported Schemas works for all eligible test-JSONs (High Lvl)
    Given I exported the WhatsApp Schemas from a Rich Content validator
    When I sort eligible test-JSONs if they are rich content-bodies and try to validate all of them against the schemas using an ajv-validator
    Then The validator either validates or returns errors for them as expected on the WhatsApp channel
