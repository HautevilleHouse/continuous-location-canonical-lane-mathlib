import continuousLocationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure MapMatchingPackage where
  roadNetwork : Type u
  hiddenMarkovModel : Type v
  viterbiAlgorithm : Prop
  mapMatchingResult : Prop

structure MapMatchingEvidence (M : MapMatchingPackage) where
  viterbiAlgorithmClosed : M.viterbiAlgorithm
  mapMatchingResultClosed : M.mapMatchingResult

def MapMatchingClosed (M : MapMatchingPackage) : Prop :=
  M.viterbiAlgorithm ∧ M.mapMatchingResult

theorem map_matching_closed_from_evidence (M : MapMatchingPackage)
    (E : MapMatchingEvidence M) : MapMatchingClosed M := by
  exact And.intro E.viterbiAlgorithmClosed E.mapMatchingResultClosed

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse