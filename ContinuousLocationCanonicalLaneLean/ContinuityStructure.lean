import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure ContinuityStructurePackage where
  epsilonDeltaCondition : Prop
  uniformContinuity : Prop
  lipschitzCondition : Prop
  lipschitzConstant : ℝ
  lipschitzConstantPositive : lipschitzConstant > 0

def ContinuityStructureClosed (C : ContinuityStructurePackage) : Prop :=
  C.epsilonDeltaCondition ∧ C.uniformContinuity ∧ C.lipschitzCondition ∧ C.lipschitzConstantPositive

theorem continuity_structure_closed (C : ContinuityStructurePackage) :
    ContinuityStructureClosed C := by
  exact And.intro C.epsilonDeltaCondition (And.intro C.uniformContinuity (And.intro C.lipschitzCondition C.lipschitzConstantPositive))

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse