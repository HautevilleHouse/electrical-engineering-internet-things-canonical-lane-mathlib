import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringInternetThingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure EnergyBudget where
  totalEnergy : Float
  consumedEnergy : Float
  energyEfficiency : Prop
  energyHarvesting : Prop
  energyNeutral : Prop

structure EnergyBudgetEvidence (E : EnergyBudget) where
  energyEfficiencyClosed : E.energyEfficiency
  energyHarvestingClosed : E.energyHarvesting
  energyNeutralClosed : E.energyNeutral

def EnergyBudgetClosed (E : EnergyBudget) : Prop :=
  E.energyEfficiency ∧ E.energyHarvesting ∧ E.energyNeutral

theorem energy_budget_closed_from_evidence (E : EnergyBudget)
    (Ev : EnergyBudgetEvidence E) : EnergyBudgetClosed E := by
  exact And.intro Ev.energyEfficiencyClosed
    (And.intro Ev.energyHarvestingClosed Ev.energyNeutralClosed)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse