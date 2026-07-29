import continuousLocationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure SensorFusionPackage where
  gpsSignal : Type u
  inertialMeasurement : Type v
  wiFiFingerprint : Type w
  fusionAlgorithm : Prop
  uncertaintyQuantification : Prop

structure SensorFusionEvidence (S : SensorFusionPackage) where
  fusionAlgorithmClosed : S.fusionAlgorithm
  uncertaintyQuantificationClosed : S.uncertaintyQuantification

def SensorFusionClosed (S : SensorFusionPackage) : Prop :=
  S.fusionAlgorithm ∧ S.uncertaintyQuantification

theorem sensor_fusion_closed_from_evidence (S : SensorFusionPackage)
    (E : SensorFusionEvidence S) : SensorFusionClosed S := by
  exact And.intro E.fusionAlgorithmClosed E.uncertaintyQuantificationClosed

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse