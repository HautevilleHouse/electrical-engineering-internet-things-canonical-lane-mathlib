import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringInternetThingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure CommunicationChannel where
  bandwidth : Nat
  latency : Nat
  errorRate : Float
  channelCapacity : Prop
  noiseMargin : Prop

structure CommunicationChannelEvidence (C : CommunicationChannel) where
  channelCapacityClosed : C.channelCapacity
  noiseMarginClosed : C.noiseMargin

def CommunicationChannelClosed (C : CommunicationChannel) : Prop :=
  C.channelCapacity ∧ C.noiseMargin

theorem communication_channel_closed_from_evidence (C : CommunicationChannel)
    (E : CommunicationChannelEvidence C) : CommunicationChannelClosed C := by
  exact And.intro E.channelCapacityClosed E.noiseMarginClosed

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse