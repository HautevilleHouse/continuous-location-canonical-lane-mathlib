import continuousLocationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure SignalPropagationPackage where
  pathLossModel : Type u
  fadingDistribution : Type v
  signalStrengthMap : Type w
  calibration : Prop
  validation : Prop

structure SignalPropagationEvidence (S : SignalPropagationPackage) where
  calibrationClosed : S.calibration
  validationClosed : S.validation

def SignalPropagationClosed (S : SignalPropagationPackage) : Prop :=
  S.calibration ∧ S.validation

theorem signal_propagation_closed_from_evidence (S : SignalPropagationPackage)
    (E : SignalPropagationEvidence S) : SignalPropagationClosed S := by
  exact And.intro E.calibrationClosed E.validationClosed

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse