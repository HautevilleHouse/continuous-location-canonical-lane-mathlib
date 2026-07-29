import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure SensorSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier

structure ContinuousLocationAdmittedObject where
  sensorSpace : SensorSpace
  locationSpace : Type v
  locationTopology : TopologicalSpace locationSpace
  continuousMapping : Prop
  targetIdentified : Prop
  conclusion : continuousMapping ∧ targetIdentified

structure ContinuousLocationAdmissibleClass where
  object : ContinuousLocationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ContinuousLocationAdmittedClosure (A : ContinuousLocationAdmissibleClass) : Prop :=
  ContinuousLocationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse
