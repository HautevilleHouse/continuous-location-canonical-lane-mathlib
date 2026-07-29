import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure AdmissibleClass where
  object : ContinuousLocationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContinuousLocationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse