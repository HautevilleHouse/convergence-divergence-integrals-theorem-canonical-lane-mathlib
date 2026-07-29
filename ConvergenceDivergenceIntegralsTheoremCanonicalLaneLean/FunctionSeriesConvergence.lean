import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure FunctionSeriesPackage where
  termType : Type u
  sumType : Type v
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  absoluteConvergence : Prop
  weierstrassMTest : Prop
  cauchyCriterion : Prop
  powerSeriesRadius : Prop
  analyticity : Prop

structure FunctionSeriesEvidence (F : FunctionSeriesPackage) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  absoluteConvergenceClosed : F.absoluteConvergence
  weierstrassMTestClosed : F.weierstrassMTest
  cauchyCriterionClosed : F.cauchyCriterion
  powerSeriesRadiusClosed : F.powerSeriesRadius
  analyticityClosed : F.analyticity

def FunctionSeriesConvergenceClosed (F : FunctionSeriesPackage) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.absoluteConvergence ∧
  F.weierstrassMTest ∧ F.cauchyCriterion ∧ F.powerSeriesRadius ∧ F.analyticity

theorem function_series_convergence_closed_from_evidence (F : FunctionSeriesPackage)
    (E : FunctionSeriesEvidence F) : FunctionSeriesConvergenceClosed F := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed
      (And.intro E.absoluteConvergenceClosed
        (And.intro E.weierstrassMTestClosed
          (And.intro E.cauchyCriterionClosed
            (And.intro E.powerSeriesRadiusClosed E.analyticityClosed)))))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse