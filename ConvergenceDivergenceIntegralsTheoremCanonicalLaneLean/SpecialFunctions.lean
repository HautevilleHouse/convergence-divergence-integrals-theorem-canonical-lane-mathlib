import canonicalLaneMathlib.AnalysisFoundations

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure SpecialFunctionsPackage where
  gammaFunctionConverges : Prop
  betaFunctionConverges : Prop
  zetaFunctionSeriesConverges : Prop
  exponentialIntegralConverges : Prop
  sineIntegralConverges : Prop
  cosineIntegralConverges : Prop

structure SpecialFunctionsEvidence (S : SpecialFunctionsPackage) where
  gammaFunctionConvergesClosed : S.gammaFunctionConverges
  betaFunctionConvergesClosed : S.betaFunctionConverges
  zetaFunctionSeriesConvergesClosed : S.zetaFunctionSeriesConverges
  exponentialIntegralConvergesClosed : S.exponentialIntegralConverges
  sineIntegralConvergesClosed : S.sineIntegralConverges
  cosineIntegralConvergesClosed : S.cosineIntegralConverges

def SpecialFunctionsClosed (S : SpecialFunctionsPackage) : Prop :=
  S.gammaFunctionConverges ∧ S.betaFunctionConverges ∧ S.zetaFunctionSeriesConverges ∧ S.exponentialIntegralConverges ∧ S.sineIntegralConverges ∧ S.cosineIntegralConverges

theorem special_functions_closed_from_evidence (S : SpecialFunctionsPackage) (E : SpecialFunctionsEvidence S) :
    SpecialFunctionsClosed S := by
  exact And.intro E.gammaFunctionConvergesClosed (And.intro E.betaFunctionConvergesClosed (And.intro E.zetaFunctionSeriesConvergesClosed (And.intro E.exponentialIntegralConvergesClosed (And.intro E.sineIntegralConvergesClosed E.cosineIntegralConvergesClosed))))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse
