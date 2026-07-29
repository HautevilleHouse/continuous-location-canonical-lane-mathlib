import continuousLocationCanonicalLaneLean.SensorAdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

def bridgeClosed (A : ContinuousLocationAdmissibleClass) : Prop :=
  ContinuousLocationWitnessClosed A.object

theorem bridge_from_admissible_class (A : ContinuousLocationAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion.1

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse
