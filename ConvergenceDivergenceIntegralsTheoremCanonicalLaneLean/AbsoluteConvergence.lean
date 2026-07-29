import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure AbsoluteConvergencePackage (C : ConvergenceTestPackage) where
  integrableAbsoluteValue : Prop
  comparisonWithConvergent : Prop
  absoluteImpliesConvergence : Prop

structure AbsoluteConvergenceEvidence {C : ConvergenceTestPackage}
    (A : AbsoluteConvergencePackage C) where
  integrableAbsoluteValueClosed : A.integrableAbsoluteValue
  comparisonWithConvergentClosed : A.comparisonWithConvergent
  absoluteImpliesConvergenceClosed : A.absoluteImpliesConvergence

def AbsoluteConvergenceClosed {C : ConvergenceTestPackage}
    (A : AbsoluteConvergencePackage C) : Prop :=
  A.integrableAbsoluteValue ∧ A.comparisonWithConvergent ∧ A.absoluteImpliesConvergence

theorem absolute_convergence_closed_from_evidence {C : ConvergenceTestPackage}
    (A : AbsoluteConvergencePackage C) (E : AbsoluteConvergenceEvidence A) :
    AbsoluteConvergenceClosed A := by
  exact And.intro E.integrableAbsoluteValueClosed
    (And.intro E.comparisonWithConvergentClosed E.absoluteImpliesConvergenceClosed)

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse