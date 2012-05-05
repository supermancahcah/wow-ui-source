local PET_BATTLE_FLOATING_ABILITY_TOOLTIP = {};

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:GetAbilityID()
	return self.abilityID;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:GetCooldown()
	return 0;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:GetRemainingDuration()
	return 0;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:IsInBattle()
	return false;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:GetHealth(target)
	self:EnsureTarget(target);
	return 100;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:GetMaxHealth(target)
	self:EnsureTarget(target);
	return 100;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:GetAttackStat(target)
	self:EnsureTarget(target);
	return 0;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:GetSpeedStat(target)
	self:EnsureTarget(target);
	return 0;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:GetState(stateID, target)
	return 0;
end

function PET_BATTLE_FLOATING_ABILITY_TOOLTIP:EnsureTarget(target)
	if ( target == "default" ) then
		target = "self";
	end
	if ( target ~= "self" ) then
		GMError("Only \"self\" unit supported out of combat");
	end
end

function FloatingPetBattleAbility_Show(abilityID)
	if ( abilityID and abilityID > 0 ) then
		PET_BATTLE_FLOATING_ABILITY_TOOLTIP.abilityID = abilityID;
		SharedPetBattleAbilityTooltip_SetAbility(FloatingPetBattleAbilityTooltip, PET_BATTLE_FLOATING_ABILITY_TOOLTIP);
		FloatingPetBattleAbilityTooltip:Show();
	end
end

