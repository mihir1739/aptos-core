spec aptos_framework::governance_proposal {
    /// <high-level-req>
    /// No.: 1
    /// Property: Creating a proposal should never abort but should always return a governance proposal resource.
    /// Criticality: Medium
    /// Implementation: Both create_proposal and create_empty_proposal functions return a GovernanceProposal resource.
    /// Enforcement: Enforced via [high-level-spec-1.1](create_proposal) and [high-level-spec-1.2](create_empty_proposal).
    ///
    /// No.: 2
    /// Property: The governance proposal module should only be accessible to the aptos governance.
    /// Criticality: Medium
    /// Implementation: Both create_proposal and create_empty_proposal functions are only available to the friend module
    /// aptos_framework::aptos_governance.
    /// Enforcement: Enforced via friend module relationship.
    /// </high-level-req>
    ///
    spec create_proposal(): GovernanceProposal {
        aborts_if false;
        /// [high-level-spec-1.1]
        ensures result == GovernanceProposal {};
    }

    spec create_empty_proposal(): GovernanceProposal {
        aborts_if false;
        /// [high-level-spec-1.2]
        ensures result == GovernanceProposal {};
    }
}
