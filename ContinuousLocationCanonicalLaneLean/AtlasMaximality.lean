import continuousLocationCanonicalLaneLean.TransitionMapCoherence

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure AtlasMaximalityPackage {L : LocalizationSystem} where
  charts : Set (CoordinateChartPackage L)
  coveringCondition : ∀ x : L.spatialDomain, ∃ C ∈ charts, x ∈ C.chartDomain
  pairwiseCompatible : ∀ C1 ∈ charts, ∀ C2 ∈ charts, TransitionMapCoherencePackage C1 C2
  maximality : Prop

structure AtlasMaximalityEvidence {L : LocalizationSystem} (A : AtlasMaximalityPackage L) where
  coveringConditionClosed : A.coveringCondition
  pairwiseCompatibleClosed : ∀ C1 ∈ A.charts, ∀ C2 ∈ A.charts, TransitionMapCoherenceClosed (A.pairwiseCompatible C1 C2)
  maximalityClosed : A.maximality

def AtlasMaximalityClosed {L : LocalizationSystem} (A : AtlasMaximalityPackage L) : Prop :=
  A.coveringCondition ∧ (∀ C1 ∈ A.charts, ∀ C2 ∈ A.charts, TransitionMapCoherenceClosed (A.pairwiseCompatible C1 C2)) ∧ A.maximality

theorem atlas_maximality_closed_from_evidence {L : LocalizationSystem} (A : AtlasMaximalityPackage L) (E : AtlasMaximalityEvidence A) : AtlasMaximalityClosed A := by
  exact And.intro E.coveringConditionClosed (And.intro E.pairwiseCompatibleClosed E.maximalityClosed)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse