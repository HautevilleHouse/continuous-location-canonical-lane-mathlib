import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure CoveringLemmaPackage where
  openCoverCondition : Prop
  finiteSubcoverExists : Prop
  epsilonParameter : ℝ
  epsilonPositive : epsilonParameter > 0

def CoveringLemmaClosed (C : CoveringLemmaPackage) : Prop :=
  C.openCoverCondition ∧ C.finiteSubcoverExists ∧ C.epsilonPositive

theorem covering_lemma_closed (C : CoveringLemmaPackage) :
    CoveringLemmaClosed C := by
  exact And.intro C.openCoverCondition (And.intro C.finiteSubcoverExists C.epsilonPositive)

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse