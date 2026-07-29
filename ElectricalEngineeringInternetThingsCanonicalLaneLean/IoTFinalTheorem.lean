import HautevilleHouse.ElectricalEngineeringInternetThingsCanonicalLaneLean.IoTGateLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

def ConstrainedIoTClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_iot_endgame (A : AdmissibleClass) :
    ConstrainedIoTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse