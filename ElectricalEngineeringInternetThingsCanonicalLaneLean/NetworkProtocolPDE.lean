import ElectricalEngineeringInternetThingsCanonicalLaneLean.IoTDeviceModel

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure NetworkProtocolPDE where
  protocolName : String
  dataRate : Nat
  latency : Nat
  reliability : Prop
  security : Prop
  maxDevices : Nat

structure NetworkProtocolEvidence (P : NetworkProtocolPDE) where
  reliabilityClosed : P.reliability
  securityClosed : P.security
  maxDevicesPositive : P.maxDevices > 0

def NetworkProtocolClosed (P : NetworkProtocolPDE) : Prop :=
  P.reliability ∧ P.security ∧ P.maxDevices > 0

theorem network_protocol_closed_from_evidence (P : NetworkProtocolPDE) (E : NetworkProtocolEvidence P) :
    NetworkProtocolClosed P := by
  exact And.intro E.reliabilityClosed (And.intro E.securityClosed E.maxDevicesPositive)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse