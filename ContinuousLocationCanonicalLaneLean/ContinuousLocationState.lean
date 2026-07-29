import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

-- | A continuous location state package
structure ContinuousLocationState where
  point : Type u
  topology : TopologicalSpace point
  hausdorff : Prop
  hausdorffTerm : hausdorff
  secondCountable : Prop
  secondCountableTerm : secondCountable

structure ContinuousLocationEvidence (S : ContinuousLocationState) where
  hausdorffClosed : S.hausdorff
  secondCountableClosed : S.secondCountable

def ContinuousLocationClosed (S : ContinuousLocationState) : Prop :=
  S.hausdorff ∧ S.secondCountable

theorem continuous_location_closed_from_evidence (S : ContinuousLocationState)
    (E : ContinuousLocationEvidence S) : ContinuousLocationClosed S := by
  exact And.intro E.hausdorffClosed E.secondCountableClosed

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse