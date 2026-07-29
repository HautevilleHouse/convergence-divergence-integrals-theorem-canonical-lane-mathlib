import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure IntegralTestCondition where
  sequence : ℕ → ℝ
  monotoneDecreasing : ∀ n : ℕ, sequence (n+1) ≤ sequence n
  nonnegativeTerms : ∀ n : ℕ, 0 ≤ sequence n
  integralTestConclusion : Prop

def IntegralTestConditionClosed (I : IntegralTestCondition) : Prop :=
  I.monotoneDecreasing ∧ I.nonnegativeTerms ∧ I.integralTestConclusion

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse