import HautevilleHouse.ElectricalEngineeringInternetThingsCanonicalLaneLean.BridgeGateLemmasIoT

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

def ConstrainedIoTClosure (A : IoTAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_iot_endgame (A : IoTAdmissibleClass) : ConstrainedIoTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse