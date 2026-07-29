import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure SeriesConvergencePackage where
  partialSumLimit : Prop
  geometricSeries : Prop
  pSeries : Prop
  alternatingSeries : Prop
  powerSeries : Prop

structure SeriesConvergenceEvidence (S : SeriesConvergencePackage) where
  partialSumLimitClosed : S.partialSumLimit
  geometricSeriesClosed : S.geometricSeries
  pSeriesClosed : S.pSeries
  alternatingSeriesClosed : S.alternatingSeries
  powerSeriesClosed : S.powerSeries

def SeriesConvergenceClosed (S : SeriesConvergencePackage) : Prop :=
  S.partialSumLimit ∧ S.geometricSeries ∧ S.pSeries ∧ S.alternatingSeries ∧ S.powerSeries

theorem series_convergence_closed_from_evidence (S : SeriesConvergencePackage) (E : SeriesConvergenceEvidence S) : SeriesConvergenceClosed S := by
  exact And.intro E.partialSumLimitClosed
    (And.intro E.geometricSeriesClosed
      (And.intro E.pSeriesClosed
        (And.intro E.alternatingSeriesClosed E.powerSeriesClosed)))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse