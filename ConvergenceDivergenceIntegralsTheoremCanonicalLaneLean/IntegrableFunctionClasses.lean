import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure IntegrableFunctionClass where
  functionFamily : Type u
  measureSpace : Type v
  integrabilityCondition : Prop
  integrableFunctions : Set (functionFamily -> ℝ)
  convergenceCriterion : Prop

def IntegrableFunctionClassClosed (F : IntegrableFunctionClass) : Prop :=
  F.integrabilityCondition ∧ F.convergenceCriterion

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse