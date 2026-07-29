import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure IntegralComparisonTestPackage where
  integrableMajorant : Prop
  absoluteConvergenceImplies : Prop
  comparisonLimit : Prop
  convergenceCriterion : Prop
  divergenceCriterion : Prop

structure IntegralComparisonTestEvidence (I : IntegralComparisonTestPackage) where
  integrableMajorantClosed : I.integrableMajorant
  absoluteConvergenceImpliesClosed : I.absoluteConvergenceImplies
  comparisonLimitClosed : I.comparisonLimit
  convergenceCriterionClosed : I.convergenceCriterion
  divergenceCriterionClosed : I.divergenceCriterion

def IntegralComparisonTestClosed (I : IntegralComparisonTestPackage) : Prop :=
  I.integrableMajorant ∧ I.absoluteConvergenceImplies ∧
  I.comparisonLimit ∧ I.convergenceCriterion ∧ I.divergenceCriterion

theorem integral_comparison_test_closed_from_evidence
    (I : IntegralComparisonTestPackage) (E : IntegralComparisonTestEvidence I) :
    IntegralComparisonTestClosed I := by
  exact And.intro E.integrableMajorantClosed
    (And.intro E.absoluteConvergenceImpliesClosed
      (And.intro E.comparisonLimitClosed
        (And.intro E.convergenceCriterionClosed E.divergenceCriterionClosed)))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse