import canonicalLaneMathlib.ConvergenceDivergenceIntegralsObject

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure AnalysisFoundations where
  riemannIntegralDefined : Prop
  improperIntegralDefined : Prop
  comparisonTest : Prop
  limitComparisonTest : Prop
  absoluteConvergenceImpliesConvergence : Prop
  convergenceCriteria : Prop

structure AnalysisFoundationsEvidence (A : AnalysisFoundations) where
  riemannIntegralDefinedClosed : A.riemannIntegralDefined
  improperIntegralDefinedClosed : A.improperIntegralDefined
  comparisonTestClosed : A.comparisonTest
  limitComparisonTestClosed : A.limitComparisonTest
  absoluteConvergenceImpliesConvergenceClosed : A.absoluteConvergenceImpliesConvergence
  convergenceCriteriaClosed : A.convergenceCriteria

def AnalysisFoundationsClosed (A : AnalysisFoundations) : Prop :=
  A.riemannIntegralDefined ∧ A.improperIntegralDefined ∧ A.comparisonTest ∧ A.limitComparisonTest ∧ A.absoluteConvergenceImpliesConvergence ∧ A.convergenceCriteria

theorem analysis_foundations_closed_from_evidence (A : AnalysisFoundations) (E : AnalysisFoundationsEvidence A) :
    AnalysisFoundationsClosed A := by
  exact And.intro E.riemannIntegralDefinedClosed (And.intro E.improperIntegralDefinedClosed (And.intro E.comparisonTestClosed (And.intro E.limitComparisonTestClosed (And.intro E.absoluteConvergenceImpliesConvergenceClosed E.convergenceCriteriaClosed))))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse
