import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure ImproperIntegralPackage where
  unboundedInterval : Prop
  infiniteIntegrand : Prop
  convergenceAtInfinity : Prop
  convergenceAtSingularity : Prop
  cauchyPrincipalValue : Prop

structure ImproperIntegralEvidence (I : ImproperIntegralPackage) where
  unboundedIntervalClosed : I.unboundedInterval
  infiniteIntegrandClosed : I.infiniteIntegrand
  convergenceAtInfinityClosed : I.convergenceAtInfinity
  convergenceAtSingularityClosed : I.convergenceAtSingularity
  cauchyPrincipalValueClosed : I.cauchyPrincipalValue

def ImproperIntegralClosed (I : ImproperIntegralPackage) : Prop :=
  I.unboundedInterval ∧ I.infiniteIntegrand ∧
  I.convergenceAtInfinity ∧ I.convergenceAtSingularity ∧ I.cauchyPrincipalValue

theorem improper_integral_closed_from_evidence
    (I : ImproperIntegralPackage) (E : ImproperIntegralEvidence I) :
    ImproperIntegralClosed I := by
  exact And.intro E.unboundedIntervalClosed
    (And.intro E.infiniteIntegrandClosed
      (And.intro E.convergenceAtInfinityClosed
        (And.intro E.convergenceAtSingularityClosed E.cauchyPrincipalValueClosed)))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse