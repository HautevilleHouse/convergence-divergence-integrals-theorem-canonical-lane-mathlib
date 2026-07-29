import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure FunctionConvergencePackage where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  dominatedConvergence : Prop
  monotoneConvergence : Prop
  uniformCauchyCriterion : Prop

structure FunctionConvergenceEvidence (F : FunctionConvergencePackage) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  dominatedConvergenceClosed : F.dominatedConvergence
  monotoneConvergenceClosed : F.monotoneConvergence
  uniformCauchyCriterionClosed : F.uniformCauchyCriterion

def FunctionConvergenceClosed (F : FunctionConvergencePackage) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.dominatedConvergence ∧ F.monotoneConvergence ∧ F.uniformCauchyCriterion

theorem function_convergence_closed_from_evidence (F : FunctionConvergencePackage) (E : FunctionConvergenceEvidence F) : FunctionConvergenceClosed F := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed
      (And.intro E.dominatedConvergenceClosed
        (And.intro E.monotoneConvergenceClosed E.uniformCauchyCriterionClosed)))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse