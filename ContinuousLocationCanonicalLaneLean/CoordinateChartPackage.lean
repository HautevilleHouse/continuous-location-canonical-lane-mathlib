import continuousLocationCanonicalLaneLean.LocalizationSystem

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure CoordinateChartPackage {L : LocalizationSystem} where
  chartDomain : L.spatialDomain
  targetSpace : Type v
  targetTopology : TopologicalSpace targetSpace
  homeomorphism : chartDomain ≃ₜ targetSpace
  smoothnessCondition : Prop
  transitionMapsSmooth : Prop
  atlasConsistency : Prop

structure CoordinateChartEvidence {L : LocalizationSystem} (C : CoordinateChartPackage L) where
  homeomorphismClosed : True
  smoothnessConditionClosed : C.smoothnessCondition
  transitionMapsSmoothClosed : C.transitionMapsSmooth
  atlasConsistencyClosed : C.atlasConsistency

def CoordinateChartClosed {L : LocalizationSystem} (C : CoordinateChartPackage L) : Prop :=
  C.smoothnessCondition ∧ C.transitionMapsSmooth ∧ C.atlasConsistency

theorem coordinate_chart_closed_from_evidence {L : LocalizationSystem} (C : CoordinateChartPackage L) (E : CoordinateChartEvidence C) : CoordinateChartClosed C := by
  exact And.intro E.smoothnessConditionClosed (And.intro E.transitionMapsSmoothClosed E.atlasConsistencyClosed)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse