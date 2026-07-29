import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure ImproperIntegralDecomposition where
  integralDomain : Set ℝ
  singularityPoints : Set ℝ
  decompositionType : Prop
  convergenceOfParts : Prop

def ImproperIntegralDecompositionClosed (D : ImproperIntegralDecomposition) : Prop :=
  D.decompositionType ∧ D.convergenceOfParts

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse