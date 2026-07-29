import canonicalLaneMathlib.AdmissibleClass
import ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse