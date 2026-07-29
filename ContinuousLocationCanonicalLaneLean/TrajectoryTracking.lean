import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure TrajectoryTrackingPackage where
  referencePath : Type u
  measuredPath : Type v
  deviationMetric : Type w
  trackingErrorBound : Prop
  convergenceRate : Prop
  trackingErrorBoundTerm : trackingErrorBound
  convergenceRateTerm : convergenceRate

structure TrajectoryTrackingEvidence (T : TrajectoryTrackingPackage) where
  trackingErrorBoundClosed : T.trackingErrorBound
  convergenceRateClosed : T.convergenceRate

def TrajectoryTrackingClosed (T : TrajectoryTrackingPackage) : Prop :=
  T.trackingErrorBound ∧ T.convergenceRate

theorem trajectory_tracking_closed_from_evidence (T : TrajectoryTrackingPackage)
    (E : TrajectoryTrackingEvidence T) : TrajectoryTrackingClosed T := by
  exact And.intro E.trackingErrorBoundClosed E.convergenceRateClosed

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse