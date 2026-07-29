import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure IntegralDivergenceTestPackage where
  integrandNonnegative : Prop
  pTestDivergence : Prop
  comparisonDivergence : Prop
  divergenceCriterion : Prop
  harmonicSeriesDivergence : Prop

structure IntegralDivergenceTestEvidence (D : IntegralDivergenceTestPackage) where
  integrandNonnegativeClosed : D.integrandNonnegative
  pTestDivergenceClosed : D.pTestDivergence
  comparisonDivergenceClosed : D.comparisonDivergence
  divergenceCriterionClosed : D.divergenceCriterion
  harmonicSeriesDivergenceClosed : D.harmonicSeriesDivergence

def IntegralDivergenceTestClosed (D : IntegralDivergenceTestPackage) : Prop :=
  D.integrandNonnegative ∧ D.pTestDivergence ∧
  D.comparisonDivergence ∧ D.divergenceCriterion ∧ D.harmonicSeriesDivergence

theorem integral_divergence_test_closed_from_evidence
    (D : IntegralDivergenceTestPackage) (E : IntegralDivergenceTestEvidence D) :
    IntegralDivergenceTestClosed D := by
  exact And.intro E.integrandNonnegativeClosed
    (And.intro E.pTestDivergenceClosed
      (And.intro E.comparisonDivergenceClosed
        (And.intro E.divergenceCriterionClosed E.harmonicSeriesDivergenceClosed)))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse