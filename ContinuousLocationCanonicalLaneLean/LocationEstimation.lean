import continuousLocationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure LocationEstimationPackage where
  rssiModel : Type u
  distanceEstimator : Type v
  multilateration : Prop
  kalmanFilter : Prop
  particleFilter : Prop

structure LocationEstimationEvidence (L : LocationEstimationPackage) where
  multilaterationClosed : L.multilateration
  kalmanFilterClosed : L.kalmanFilter
  particleFilterClosed : L.particleFilter

def LocationEstimationClosed (L : LocationEstimationPackage) : Prop :=
  L.multilateration ∧ L.kalmanFilter ∧ L.particleFilter

theorem location_estimation_closed_from_evidence (L : LocationEstimationPackage)
    (E : LocationEstimationEvidence L) : LocationEstimationClosed L := by
  exact And.intro E.multilaterationClosed
    (And.intro E.kalmanFilterClosed E.particleFilterClosed)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse