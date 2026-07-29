import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure ConvergenceTestPackage where
  integrandType : Type u
  domainType : Type v
  absoluteConvergence : Prop
  conditionalConvergence : Prop
  comparisonTest : Prop
  limitComparisonTest : Prop
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop
  dirichletTest : Prop
  abelTest : Prop

structure ConvergenceTestEvidence (C : ConvergenceTestPackage) where
  absoluteConvergenceClosed : C.absoluteConvergence
  conditionalConvergenceClosed : C.conditionalConvergence
  comparisonTestClosed : C.comparisonTest
  limitComparisonTestClosed : C.limitComparisonTest
  ratioTestClosed : C.ratioTest
  rootTestClosed : C.rootTest
  integralTestClosed : C.integralTest
  dirichletTestClosed : C.dirichletTest
  abelTestClosed : C.abelTest

def ConvergenceTestClosed (C : ConvergenceTestPackage) : Prop :=
  C.absoluteConvergence ∧ C.conditionalConvergence ∧ C.comparisonTest ∧
  C.limitComparisonTest ∧ C.ratioTest ∧ C.rootTest ∧ C.integralTest ∧
  C.dirichletTest ∧ C.abelTest

theorem convergence_test_closed_from_evidence (C : ConvergenceTestPackage)
    (E : ConvergenceTestEvidence C) : ConvergenceTestClosed C := by
  exact And.intro E.absoluteConvergenceClosed
    (And.intro E.conditionalConvergenceClosed
      (And.intro E.comparisonTestClosed
        (And.intro E.limitComparisonTestClosed
          (And.intro E.ratioTestClosed
            (And.intro E.rootTestClosed
              (And.intro E.integralTestClosed
                (And.intro E.dirichletTestClosed E.abelTestClosed)))))))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse