import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure LocalizationSystem where
  spatialDomain : Type u
  topology : TopologicalSpace spatialDomain
  openCover : Set (Set spatialDomain)
  continuousFamily : Prop
  transitionCompatibility : Prop
  globalConsistency : Prop

structure LocalizationSystemEvidence (L : LocalizationSystem) where
  continuousFamilyClosed : L.continuousFamily
  transitionCompatibilityClosed : L.transitionCompatibility
  globalConsistencyClosed : L.globalConsistency

def LocalizationSystemClosed (L : LocalizationSystem) : Prop :=
  L.continuousFamily ∧ L.transitionCompatibility ∧ L.globalConsistency

theorem localization_system_closed_from_evidence (L : LocalizationSystem) (E : LocalizationSystemEvidence L) : LocalizationSystemClosed L := by
  exact And.intro E.continuousFamilyClosed (And.intro E.transitionCompatibilityClosed E.globalConsistencyClosed)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse