import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean

structure ComparisonTestPackage where
  referenceIntegral : Type u
  targetIntegral : Type v
  dominanceRelation : Prop
  limitComparison : Prop
  convergenceTransfer : Prop
  divergenceTransfer : Prop

structure ComparisonTestEvidence (C : ComparisonTestPackage) where
  dominanceRelationClosed : C.dominanceRelation
  limitComparisonClosed : C.limitComparison
  convergenceTransferClosed : C.convergenceTransfer
  divergenceTransferClosed : C.divergenceTransfer

def ComparisonTestClosed (C : ComparisonTestPackage) : Prop :=
  C.dominanceRelation ∧ C.limitComparison ∧ C.convergenceTransfer ∧ C.divergenceTransfer

theorem comparison_test_closed_from_evidence (C : ComparisonTestPackage) (E : ComparisonTestEvidence C) : ComparisonTestClosed C := by
  exact And.intro E.dominanceRelationClosed
    (And.intro E.limitComparisonClosed
      (And.intro E.convergenceTransferClosed E.divergenceTransferClosed))

end ConvergenceDivergenceIntegralsTheoremCanonicalLaneLean
end HautevilleHouse