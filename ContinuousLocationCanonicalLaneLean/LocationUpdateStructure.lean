import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure LocationUpdatePackage where
  deltaTime : Type u
  deltaPositive : Prop
  position : Prop
  velocity : Prop
  acceleration : Prop
  deltaPositiveTerm : deltaPositive
  positionTerm : position
  velocityTerm : velocity
  accelerationTerm : acceleration

structure LocationUpdateEvidence (U : LocationUpdatePackage) where
  deltaPositiveClosed : U.deltaPositive
  positionClosed : U.position
  velocityClosed : U.velocity
  accelerationClosed : U.acceleration

def LocationUpdateClosed (U : LocationUpdatePackage) : Prop :=
  U.deltaPositive ∧ U.position ∧ U.velocity ∧ U.acceleration

theorem location_update_closed_from_evidence (U : LocationUpdatePackage)
    (E : LocationUpdateEvidence U) : LocationUpdateClosed U := by
  exact And.intro E.deltaPositiveClosed
    (And.intro E.positionClosed
      (And.intro E.velocityClosed E.accelerationClosed))

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse