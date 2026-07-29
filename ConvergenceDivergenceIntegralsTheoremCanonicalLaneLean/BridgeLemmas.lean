import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  admittedClosure A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.gateWitness

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse