import continuousLocationCanonicalLaneLean.SensorFusionBridge

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

def gateClosed (A : ContinuousLocationAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ContinuousLocationAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse
