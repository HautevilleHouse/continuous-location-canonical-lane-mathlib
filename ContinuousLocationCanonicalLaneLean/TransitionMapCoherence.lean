import continuousLocationCanonicalLaneLean.CoordinateChartPackage

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure TransitionMapCoherencePackage {L : LocalizationSystem} {C1 C2 : CoordinateChartPackage L} where
  overlap : Set L.spatialDomain
  chart1Refinement : C1.chartDomain ∩ C2.chartDomain = overlap
  transitionMap : C1.targetSpace → C2.targetSpace
  transitionContinuous : Prop
  transitionInverseContinuous : Prop
  cocycleCondition : Prop

structure TransitionMapCoherenceEvidence {L : LocalizationSystem} {C1 C2 : CoordinateChartPackage L} (T : TransitionMapCoherencePackage C1 C2) where
  transitionContinuousClosed : T.transitionContinuous
  transitionInverseContinuousClosed : T.transitionInverseContinuous
  cocycleConditionClosed : T.cocycleCondition

def TransitionMapCoherenceClosed {L : LocalizationSystem} {C1 C2 : CoordinateChartPackage L} (T : TransitionMapCoherencePackage C1 C2) : Prop :=
  T.transitionContinuous ∧ T.transitionInverseContinuous ∧ T.cocycleCondition

theorem transition_map_coherence_closed_from_evidence {L : LocalizationSystem} {C1 C2 : CoordinateChartPackage L} (T : TransitionMapCoherencePackage C1 C2) (E : TransitionMapCoherenceEvidence T) : TransitionMapCoherenceClosed T := by
  exact And.intro E.transitionContinuousClosed (And.intro E.transitionInverseContinuousClosed E.cocycleConditionClosed)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse