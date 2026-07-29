import canonicalLaneMathlib.AdmissibleClass
import ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean.BridgeLemmas
import ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

def ConstrainedConvergenceDivergenceIntegralsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_divergence_integrals_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceDivergenceIntegralsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse