import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure DivergenceCriteriaPackage where
  termDivergence : Prop
  comparisonDivergence : Prop
  oscillation : Prop
  unboundedPartialSums : Prop

structure DivergenceCriteriaEvidence (D : DivergenceCriteriaPackage) where
  termDivergenceClosed : D.termDivergence
  comparisonDivergenceClosed : D.comparisonDivergence
  oscillationClosed : D.oscillation
  unboundedPartialSumsClosed : D.unboundedPartialSums

def DivergenceCriteriaClosed (D : DivergenceCriteriaPackage) : Prop :=
  D.termDivergence ∧ D.comparisonDivergence ∧ D.oscillation ∧ D.unboundedPartialSums

theorem divergence_criteria_closed_from_evidence (D : DivergenceCriteriaPackage) (E : DivergenceCriteriaEvidence D) : DivergenceCriteriaClosed D := by
  exact And.intro E.termDivergenceClosed
    (And.intro E.comparisonDivergenceClosed
      (And.intro E.oscillationClosed E.unboundedPartialSumsClosed))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse