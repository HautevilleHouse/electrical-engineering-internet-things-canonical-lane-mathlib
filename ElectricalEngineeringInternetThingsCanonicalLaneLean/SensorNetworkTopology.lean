import ElectricalEngineeringInternetThingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure SensorNetworkTopologyPackage where
  nodeSet : Type u
  edgeSet : Type v
  connectivity : Prop
  coverage : Prop
  scalability : Prop
  faultTolerance : Prop

structure SensorNetworkTopologyEvidence (T : SensorNetworkTopologyPackage) where
  connectivityClosed : T.connectivity
  coverageClosed : T.coverage
  scalabilityClosed : T.scalability
  faultToleranceClosed : T.faultTolerance

def SensorNetworkTopologyClosed (T : SensorNetworkTopologyPackage) : Prop :=
  T.connectivity ∧ T.coverage ∧ T.scalability ∧ T.faultTolerance

theorem sensor_network_topology_closed_from_evidence (T : SensorNetworkTopologyPackage)
    (E : SensorNetworkTopologyEvidence T) : SensorNetworkTopologyClosed T := by
  exact And.intro E.connectivityClosed (And.intro E.coverageClosed
    (And.intro E.scalabilityClosed E.faultToleranceClosed))

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse