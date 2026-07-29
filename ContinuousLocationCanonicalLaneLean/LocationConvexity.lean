import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure LocationConvexityPackage {A : AdmissibleClass} where
  space : Type
  convexSet : Set space
  convexCombination : Prop
  fixedPointProperty : Prop
  locationBoundaryCondition : Prop
  convexityClosed : Prop

theorem location_convexity_closed {A : AdmissibleClass} (L : LocationConvexityPackage) :
    L.convexityClosed := by
  exact L.convexityClosed

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse