import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure UniformConvergencePackage where
  functionSequenceType : Type u
  domainType : Type v
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  cauchyCriterion : Prop
  weierstrassMTest : Prop
  uniformLimitContinuous : Prop
  termwiseIntegration : Prop
  termwiseDifferentiation : Prop

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  pointwiseConvergenceClosed : U.pointwiseConvergence
  uniformConvergenceClosed : U.uniformConvergence
  cauchyCriterionClosed : U.cauchyCriterion
  weierstrassMTestClosed : U.weierstrassMTest
  uniformLimitContinuousClosed : U.uniformLimitContinuous
  termwiseIntegrationClosed : U.termwiseIntegration
  termwiseDifferentiationClosed : U.termwiseDifferentiation

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.pointwiseConvergence ∧ U.uniformConvergence ∧ U.cauchyCriterion ∧
  U.weierstrassMTest ∧ U.uniformLimitContinuous ∧ U.termwiseIntegration ∧
  U.termwiseDifferentiation

theorem uniform_convergence_closed_from_evidence (U : UniformConvergencePackage)
    (E : UniformConvergenceEvidence U) : UniformConvergenceClosed U := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed
      (And.intro E.cauchyCriterionClosed
        (And.intro E.weierstrassMTestClosed
          (And.intro E.uniformLimitContinuousClosed
            (And.intro E.termwiseIntegrationClosed E.termwiseDifferentiationClosed)))))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse