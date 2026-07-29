import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure IntegralConvergenceTestPackage where
  integrandPositive : Prop
  pTestConvergence : Prop
  pTestDivergence : Prop
  limitComparisonTest : Prop
  absoluteConvergence : Prop

structure IntegralConvergenceTestEvidence (C : IntegralConvergenceTestPackage) where
  integrandPositiveClosed : C.integrandPositive
  pTestConvergenceClosed : C.pTestConvergence
  pTestDivergenceClosed : C.pTestDivergence
  limitComparisonTestClosed : C.limitComparisonTest
  absoluteConvergenceClosed : C.absoluteConvergence

def IntegralConvergenceTestClosed (C : IntegralConvergenceTestPackage) : Prop :=
  C.integrandPositive ∧ C.pTestConvergence ∧
  C.pTestDivergence ∧ C.limitComparisonTest ∧ C.absoluteConvergence

theorem integral_convergence_test_closed_from_evidence
    (C : IntegralConvergenceTestPackage) (E : IntegralConvergenceTestEvidence C) :
    IntegralConvergenceTestClosed C := by
  exact And.intro E.integrandPositiveClosed
    (And.intro E.pTestConvergenceClosed
      (And.intro E.pTestDivergenceClosed
        (And.intro E.limitComparisonTestClosed E.absoluteConvergenceClosed)))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse