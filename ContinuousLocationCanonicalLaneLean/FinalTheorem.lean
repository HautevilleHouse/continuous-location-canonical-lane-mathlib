import continuousLocationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

def ConstrainedContinuousLocationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_location_endgame (A : AdmissibleClass) :
    ConstrainedContinuousLocationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse