import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationCanonicalLaneLean

structure ContinuityFlowPackage where
  flow: Type
  continuousParameter: Type
  outputSpace: Type
  flowContinuous: Prop
  parameterContinuous: Prop
  outputContinuous: Prop

theorem continuity_flow_continuous (C : ContinuityFlowPackage) :
    C.flowContinuous := by
  exact C.flowContinuous

end ContinuousLocationCanonicalLaneLean
end HautevilleHouse