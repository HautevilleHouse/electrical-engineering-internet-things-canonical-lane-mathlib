import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure NetworkProtocolPackage where
  protocolName : String
  packetStructure : Prop
  routingAlgorithm : Prop
  errorCorrection : Prop
  latencyGuarantee : Prop

structure NetworkProtocolEvidence (P : NetworkProtocolPackage) where
  packetStructureClosed : P.packetStructure
  routingAlgorithmClosed : P.routingAlgorithm
  errorCorrectionClosed : P.errorCorrection
  latencyGuaranteeClosed : P.latencyGuarantee

def NetworkProtocolClosed (P : NetworkProtocolPackage) : Prop :=
  P.packetStructure ∧ P.routingAlgorithm ∧
  P.errorCorrection ∧ P.latencyGuarantee

theorem network_protocol_closed_from_evidence (P : NetworkProtocolPackage) (E : NetworkProtocolEvidence P) :
    NetworkProtocolClosed P := by
  exact And.intro E.packetStructureClosed
    (And.intro E.routingAlgorithmClosed
      (And.intro E.errorCorrectionClosed E.latencyGuaranteeClosed))

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse