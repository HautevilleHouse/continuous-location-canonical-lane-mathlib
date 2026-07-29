import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure LocationFrameworkPackage where
  metricSpace : Type u
  metric : MetricSpace metricSpace
  locationFunction : metricSpace → ℝ
  continuityWitness : Continuous locationFunction

def LocationFrameworkClosed (L : LocationFrameworkPackage) : Prop :=
  L.continuityWitness

theorem location_framework_closed (L : LocationFrameworkPackage) :
    LocationFrameworkClosed L := by
  exact L.continuityWitness

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse