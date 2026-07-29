import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringInternetThingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure NetworkProtocol where
  protocolName : String
  packetDeliveryRate : Float
  throughput : Nat
  congestionControl : Prop
  reliability : Prop
  security : Prop

structure NetworkProtocolEvidence (N : NetworkProtocol) where
  congestionControlClosed : N.congestionControl
  reliabilityClosed : N.reliability
  securityClosed : N.security

def NetworkProtocolClosed (N : NetworkProtocol) : Prop :=
  N.congestionControl ∧ N.reliability ∧ N.security

theorem network_protocol_closed_from_evidence (N : NetworkProtocol)
    (E : NetworkProtocolEvidence N) : NetworkProtocolClosed N := by
  exact And.intro E.congestionControlClosed
    (And.intro E.reliabilityClosed E.securityClosed)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse