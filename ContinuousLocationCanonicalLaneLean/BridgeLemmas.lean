import continuousLocationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuousLocationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse