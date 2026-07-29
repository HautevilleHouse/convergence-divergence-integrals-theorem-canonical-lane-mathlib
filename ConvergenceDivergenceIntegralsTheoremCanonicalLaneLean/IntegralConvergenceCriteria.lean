import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure IntegralTestPackage where
  integrand : Type u
  domain : Type v
  absoluteConvergence : Prop
  conditionalConvergence : Prop
  integralTestCondition : Prop
  pSeriesConvergence : Prop

structure IntegralTestEvidence (I : IntegralTestPackage) where
  absoluteConvergenceClosed : I.absoluteConvergence
  conditionalConvergenceClosed : I.conditionalConvergence
  integralTestConditionClosed : I.integralTestCondition
  pSeriesConvergenceClosed : I.pSeriesConvergence

def IntegralTestClosed (I : IntegralTestPackage) : Prop :=
  I.absoluteConvergence ∧ I.conditionalConvergence ∧ I.integralTestCondition ∧ I.pSeriesConvergence

theorem integral_test_closed_from_evidence (I : IntegralTestPackage) (E : IntegralTestEvidence I) : IntegralTestClosed I := by
  exact And.intro E.absoluteConvergenceClosed
    (And.intro E.conditionalConvergenceClosed
      (And.intro E.integralTestConditionClosed E.pSeriesConvergenceClosed))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse