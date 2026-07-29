import continuousLocationCanonicalLaneLean.SensorGate

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

def ConstrainedContinuousLocationClosure (A : ContinuousLocationAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_location_endgame (A : ContinuousLocationAdmissibleClass) :
    ConstrainedContinuousLocationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse
