import canonicalLaneMathlib.ConvergenceDivergenceIntegralsObject

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure IntegralTestPackage where
  integrand : (Nat → ℝ) → ℕ → ℝ
  termDecreasing : Prop
  integralComparison : Prop
  convergenceCriterion : Prop
  divergenceCriterion : Prop

structure IntegralTestEvidence (I : IntegralTestPackage) where
  termDecreasingClosed : I.termDecreasing
  integralComparisonClosed : I.integralComparison
  convergenceCriterionClosed : I.convergenceCriterion
  divergenceCriterionClosed : I.divergenceCriterion

def IntegralTestClosed (I : IntegralTestPackage) : Prop :=
  I.termDecreasing ∧ I.integralComparison ∧ I.convergenceCriterion ∧ I.divergenceCriterion

theorem integral_test_closed_from_evidence (I : IntegralTestPackage) (E : IntegralTestEvidence I) :
    IntegralTestClosed I := by
  exact And.intro E.termDecreasingClosed (And.intro E.integralComparisonClosed (And.intro E.convergenceCriterionClosed E.divergenceCriterionClosed))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse
