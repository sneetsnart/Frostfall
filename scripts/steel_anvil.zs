import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.betterwithmods.Anvil;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;

// Armor
var mythrilArmor = itemUtils.getItemsByRegexRegistryName("simpleores:mythril_(helmet|chestplate|leggings|boots)") as IItemStack[];
var onyxArmor  = itemUtils.getItemsByRegexRegistryName("simpleores:onyx_(helmet|chestplate|leggings|boots)") as IItemStack[];
var viridiumArmor = itemUtils.getItemsByRegexRegistryName("simpleores:adamantium_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonsteelFireArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonsteel_fire_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonsteelIceArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonsteel_ice_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleRedArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_red_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleBronzeArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_bronze_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleEmeraldArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_green_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleGrayArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_gray_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleBlueArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_blue_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleWhiteArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_white_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleSapphireArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_sapphire_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleSilverArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_silver_(helmet|chestplate|leggings|boots)") as IItemStack[];
var soulforgedSteelArmor = itemUtils.getItemsByRegexRegistryName("betterwithmods:steel_(helmet|chest|pants|boots)") as IItemStack[];
var meteorArmor = itemUtils.getItemsByRegexRegistryName("nyx:meteor_(helm|chest|pants|boots)") as IItemStack[];
var knightlyArmor = itemUtils.getItemsByRegexRegistryName("twilightforest:knightmetal_(helmet|chestplate|leggings|boots)") as IItemStack[];
var fieryArmor = itemUtils.getItemsByRegexRegistryName("twilightforest:fiery_(helmet|chestplate|leggings|boots)") as IItemStack[];
var arcticArmor = itemUtils.getItemsByRegexRegistryName("twilightforest:arctic_(helmet|chestplate|leggings|boots)") as IItemStack[];

var anvilArmorMap = {
    <ore:ingotMythril> : mythrilArmor,
    <ore:gemOnyx> : onyxArmor,
    <ore:ingotViridium> : viridiumArmor,
    <iceandfire:dragonsteel_fire_ingot> : dragonsteelFireArmor,
    <iceandfire:dragonsteel_ice_ingot> : dragonsteelIceArmor,
    <iceandfire:dragonscales_red> : dragonScaleRedArmor,
    <iceandfire:dragonscales_bronze> : dragonScaleBronzeArmor,
    <iceandfire:dragonscales_green> : dragonScaleEmeraldArmor,
    <iceandfire:dragonscales_gray> : dragonScaleGrayArmor,
    <iceandfire:dragonscales_blue> : dragonScaleBlueArmor,
    <iceandfire:dragonscales_white> : dragonScaleWhiteArmor,
    <iceandfire:dragonscales_sapphire> : dragonScaleSapphireArmor,
    <iceandfire:dragonscales_silver> : dragonScaleSilverArmor,
    <betterwithmods:material:14> : soulforgedSteelArmor,
    <ore:ingotKnightmetal> : knightlyArmor,
    <ore:ingotFiery> : fieryArmor,
    <ore:furArctic> : arcticArmor

} as IItemStack[][IIngredient];

var plateArmor = <betterwithmods:material:42>;
var counter = 0;

Anvil.addShaped(<atop:amethyst_boots>,[
    [null, null, <contenttweaker:exorite_ingot>],
    [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, plateArmor],
    [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, plateArmor],
    [null, null, <contenttweaker:exorite_ingot>]
    ]);

Anvil.addShaped(<atop:amethyst_chestplate>,[
    [plateArmor, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>],
    [null, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>],
    [null, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>],
    [plateArmor, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>]
    ]);

Anvil.addShaped(<atop:amethyst_helmet>,[
    [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, plateArmor],
    [<contenttweaker:exorite_ingot>, null, null, null],
    [<contenttweaker:exorite_ingot>, null, null, null],
    [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, plateArmor]
    ]);


Anvil.addShaped(<atop:amethyst_leggings>,[
    [<contenttweaker:exorite_ingot>, plateArmor, plateArmor, plateArmor],
    [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, null, null],
    [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, null, null],
    [<contenttweaker:exorite_ingot>, plateArmor, plateArmor, plateArmor]
    ]);

Anvil.addShaped(<aether_legacy:phoenix_helmet>,[
    [<arcaneworld:molten_core>, <arcaneworld:molten_core>, <arcaneworld:molten_core>, <contenttweaker:valkyrien_plate>],
    [<arcaneworld:molten_core>, null, null, null],
    [<arcaneworld:molten_core>, null, null, null],
    [<arcaneworld:molten_core>, <arcaneworld:molten_core>, <arcaneworld:molten_core>, <contenttweaker:valkyrien_plate>]
]);

Anvil.addShaped(<aether_legacy:phoenix_chestplate>,[
    [<contenttweaker:valkyrien_plate>, <arcaneworld:molten_core>, <arcaneworld:molten_core>, <arcaneworld:molten_core>],
    [null, <arcaneworld:molten_core>, <arcaneworld:molten_core>, <arcaneworld:molten_core>],
    [null, <arcaneworld:molten_core>, <arcaneworld:molten_core>, <arcaneworld:molten_core>],
    [<contenttweaker:valkyrien_plate>, <arcaneworld:molten_core>, <arcaneworld:molten_core>, <arcaneworld:molten_core>]
]);

Anvil.addShaped(<aether_legacy:phoenix_leggings>,[
    [<arcaneworld:molten_core>, <contenttweaker:valkyrien_plate>, <contenttweaker:valkyrien_plate>, <contenttweaker:valkyrien_plate>],
    [<arcaneworld:molten_core>, <arcaneworld:molten_core>, null, null],
    [<arcaneworld:molten_core>, <arcaneworld:molten_core>, null, null],
    [<arcaneworld:molten_core>, <contenttweaker:valkyrien_plate>, <contenttweaker:valkyrien_plate>, <contenttweaker:valkyrien_plate>]
]);

Anvil.addShaped(<aether_legacy:phoenix_boots>,[
    [null, null, <arcaneworld:molten_core>],
    [<arcaneworld:molten_core>, <arcaneworld:molten_core>, <contenttweaker:valkyrien_plate>],
    [<arcaneworld:molten_core>, <arcaneworld:molten_core>, <contenttweaker:valkyrien_plate>],
    [null, null, <arcaneworld:molten_core>]
]);

Anvil.addShaped(<aether_legacy:valkyrie_helmet>,[
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>, <contenttweaker:valkyrien_plate>],
    [<ore:ingotElectrum>, null, null, null],
    [<ore:ingotElectrum>, null, null, null],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>, <contenttweaker:valkyrien_plate>]
]);

Anvil.addShaped(<aether_legacy:valkyrie_chestplate>,[
    [<contenttweaker:valkyrien_plate>, <ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
    [null, <ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
    [null, <ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
    [<contenttweaker:valkyrien_plate>, <ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>]
]);

Anvil.addShaped(<aether_legacy:valkyrie_leggings>,[
    [<ore:ingotElectrum>, <contenttweaker:valkyrien_plate>, <contenttweaker:valkyrien_plate>, <contenttweaker:valkyrien_plate>],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, null, null],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, null, null],
    [<ore:ingotElectrum>, <contenttweaker:valkyrien_plate>, <contenttweaker:valkyrien_plate>, <contenttweaker:valkyrien_plate>]
]);

Anvil.addShaped(<aether_legacy:valkyrie_boots>,[
    [null, null, <ore:ingotElectrum>],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <contenttweaker:valkyrien_plate>],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <contenttweaker:valkyrien_plate>],
    [null, null, <ore:ingotElectrum>]
]);

Anvil.addShaped(<aether_legacy:valkyrie_lance>,[
    [null, null, null, <contenttweaker:electrum_core>],
    [null, <ore:ingotElectrum>, <spartanfire:witherbone_handle>, null],
    [<ore:ingotElectrum>, <spartanfire:witherbone_handle>, <ore:ingotElectrum>, null],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, null, null]
]);

recipes.remove(<twilightforest:steeleaf_boots>);
Anvil.addShaped(<twilightforest:steeleaf_boots>.withTag({ench: [{lvl: 2 as short, id: 2 as short}]}),[
    [null, null, <ore:ingotSteeleaf>],
    [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, plateArmor],
    [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, plateArmor],
    [null, null, <ore:ingotSteeleaf>]
    ]);

recipes.remove(<twilightforest:steeleaf_chestplate>);
Anvil.addShaped(<twilightforest:steeleaf_chestplate>.withTag({ench: [{lvl: 2 as short, id: 1 as short}]}),[
    [plateArmor, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>],
    [null, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>],
    [null, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>],
    [plateArmor, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>]
    ]);

recipes.remove(<twilightforest:steeleaf_helmet>);
Anvil.addShaped(<twilightforest:steeleaf_helmet>.withTag({ench: [{lvl: 2 as short, id: 3 as short}]}),[
    [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>, plateArmor],
    [<ore:ingotSteeleaf>, null, null, null],
    [<ore:ingotSteeleaf>, null, null, null],
    [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>, plateArmor]
    ]);

recipes.remove(<twilightforest:steeleaf_leggings>);
Anvil.addShaped(<twilightforest:steeleaf_leggings>.withTag({ench: [{lvl: 2 as short, id: 4 as short}]}),[
    [<ore:ingotSteeleaf>, plateArmor, plateArmor, plateArmor],
    [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, null, null],
    [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, null, null],
    [<ore:ingotSteeleaf>, plateArmor, plateArmor, plateArmor]
    ]);

recipes.remove(<twilightforest:ironwood_boots>);
Anvil.addShaped(<twilightforest:ironwood_boots>.withTag({ench: [{lvl: 1 as short, id: 2 as short}]}),[
    [null, null, <ore:ingotIronwood>],
    [<ore:ingotIronwood>, <ore:ingotIronwood>, plateArmor],
    [<ore:ingotIronwood>, <ore:ingotIronwood>, plateArmor],
    [null, null, <ore:ingotIronwood>]
    ]);

recipes.remove(<twilightforest:ironwood_chestplate>);
Anvil.addShaped(<twilightforest:ironwood_chestplate>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}),[
    [plateArmor, <ore:ingotIronwood>, <ore:ingotIronwood>, <ore:ingotIronwood>],
    [null, <ore:ingotIronwood>, <ore:ingotIronwood>, <ore:ingotIronwood>],
    [null, <ore:ingotIronwood>, <ore:ingotIronwood>, <ore:ingotIronwood>],
    [plateArmor, <ore:ingotIronwood>, <ore:ingotIronwood>, <ore:ingotIronwood>]
    ]);

recipes.remove(<twilightforest:ironwood_helmet>);
Anvil.addShaped(<twilightforest:ironwood_helmet>.withTag({ench: [{lvl: 1 as short, id: 6 as short}]}),[
    [<ore:ingotIronwood>, <ore:ingotIronwood>, <ore:ingotIronwood>, plateArmor],
    [<ore:ingotIronwood>, null, null, null],
    [<ore:ingotIronwood>, null, null, null],
    [<ore:ingotIronwood>, <ore:ingotIronwood>, <ore:ingotIronwood>, plateArmor]
    ]);

recipes.remove(<twilightforest:ironwood_leggings>);
Anvil.addShaped(<twilightforest:ironwood_leggings>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}),[
    [<ore:ingotIronwood>, plateArmor, plateArmor, plateArmor],
    [<ore:ingotIronwood>, <ore:ingotIronwood>, null, null],
    [<ore:ingotIronwood>, <ore:ingotIronwood>, null, null],
    [<ore:ingotIronwood>, plateArmor, plateArmor, plateArmor]
    ]);

recipes.remove(<twilightforest:yeti_boots>);
Anvil.addShaped(<twilightforest:yeti_boots>.withTag({ench: [{lvl: 2 as short, id: 0 as short}, {lvl: 4 as short, id: 2 as short}]}),[
    [null, null, <twilightforest:alpha_fur>],
    [<twilightforest:alpha_fur>, <twilightforest:alpha_fur>, plateArmor],
    [<twilightforest:alpha_fur>, <twilightforest:alpha_fur>, plateArmor],
    [null, null, <twilightforest:alpha_fur>]
    ]);

recipes.remove(<twilightforest:yeti_chestplate>);
Anvil.addShaped(<twilightforest:yeti_chestplate>.withTag({ench: [{lvl: 2 as short, id: 0 as short}]}),[
    [plateArmor, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>],
    [null, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>],
    [null, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>],
    [plateArmor, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>]
    ]);

recipes.remove(<twilightforest:yeti_helmet>);
Anvil.addShaped(<twilightforest:yeti_helmet>.withTag({ench: [{lvl: 2 as short, id: 0 as short}]}),[
    [<twilightforest:alpha_fur>, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>, plateArmor],
    [<twilightforest:alpha_fur>, null, null, null],
    [<twilightforest:alpha_fur>, null, null, null],
    [<twilightforest:alpha_fur>, <twilightforest:alpha_fur>, <twilightforest:alpha_fur>, plateArmor]
    ]);

recipes.remove(<twilightforest:yeti_leggings>);
Anvil.addShaped(<twilightforest:yeti_leggings>.withTag({ench: [{lvl: 2 as short, id: 0 as short}]}),[
    [<twilightforest:alpha_fur>, plateArmor, plateArmor, plateArmor],
    [<twilightforest:alpha_fur>, <twilightforest:alpha_fur>, null, null],
    [<twilightforest:alpha_fur>, <twilightforest:alpha_fur>, null, null],
    [<twilightforest:alpha_fur>, plateArmor, plateArmor, plateArmor]
    ]);

recipes.remove(<twilightforest:naga_leggings>);
Anvil.addShaped(<twilightforest:naga_leggings>.withTag({ench: [{lvl: 3 as short, id: 0}]}),[
    [<twilightforest:naga_scale>, plateArmor, plateArmor, plateArmor],
    [<twilightforest:naga_scale>, <twilightforest:naga_scale>, null, null],
    [<twilightforest:naga_scale>, <twilightforest:naga_scale>, null, null],
    [<twilightforest:naga_scale>, plateArmor, plateArmor, plateArmor]
    ]);

recipes.remove(<twilightforest:naga_chestplate>);
Anvil.addShaped(<twilightforest:naga_chestplate>.withTag({ench: [{lvl: 2 as short, id: 0 as short}]}),[
    [plateArmor, <twilightforest:naga_scale>, <twilightforest:naga_scale>, <twilightforest:naga_scale>],
    [null, <twilightforest:naga_scale>, <twilightforest:naga_scale>, <twilightforest:naga_scale>],
    [null, <twilightforest:naga_scale>, <twilightforest:naga_scale>, <twilightforest:naga_scale>],
    [plateArmor, <twilightforest:naga_scale>, <twilightforest:naga_scale>, <twilightforest:naga_scale>]
    ]);

Anvil.removeShaped(<betterwithmods:steel_helmet>);
Anvil.removeShaped(<betterwithmods:steel_chest>);
Anvil.removeShaped(<betterwithmods:steel_pants>);
Anvil.removeShaped(<betterwithmods:steel_boots>);

for mat, armor in anvilArmorMap{
    if(!(armor has <betterwithmods:material:14>)){
        recipes.remove(armor[counter]);// boots 0
    }
    Anvil.addShaped(armor[counter],[
        [null, null, mat],
        [mat, mat, plateArmor],
        [mat, mat, plateArmor],
        [null, null, mat]
    ]);

    counter += 1;
    if(!(armor has <betterwithmods:material:14>)){
        recipes.remove(armor[counter]);// chestplate 1
    }
    Anvil.addShaped(armor[counter],[
        [plateArmor, mat, mat, mat],
        [null, mat, mat, mat],
        [null, mat, mat, mat],
        [plateArmor, mat, mat, mat]
    ]);

    counter += 1;
    if(!(armor has <betterwithmods:material:14>)){
        recipes.remove(armor[counter]);// helmet 2
    }
    Anvil.addShaped(armor[counter],[
        [mat, mat, mat, plateArmor],
        [mat, null, null, null],
        [mat, null, null, null],
        [mat, mat, mat, plateArmor]
    ]);

    counter += 1;
    if(!(armor has <betterwithmods:material:14>)){
        recipes.remove(armor[counter]);// leggings 3
    }
    Anvil.addShaped(armor[counter],[
        [mat, plateArmor, plateArmor, plateArmor],
        [mat, mat, null, null],
        [mat, mat, null, null],
        [mat, plateArmor, plateArmor, plateArmor]
    ]);

    counter = 0;
}

var tideBlueArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_blue.*") as IItemStack[];
var tideBronzeArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_bronze.*") as IItemStack[];
var tideDeepBlueArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_deepblue.*") as IItemStack[];
var tideGreenArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_green.*") as IItemStack[];
var tidePurpleArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_purple.*") as IItemStack[];
var tideRedArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_red.*") as IItemStack[];
var tideTealArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_teal.*") as IItemStack[];

var tideArmorMap = {
    <iceandfire:sea_serpent_scales_blue> : tideBlueArmor,
    <iceandfire:sea_serpent_scales_bronze> : tideBronzeArmor,
    <iceandfire:sea_serpent_scales_deepblue> : tideDeepBlueArmor,
    <iceandfire:sea_serpent_scales_green> : tideGreenArmor,
    <iceandfire:sea_serpent_scales_purple> : tidePurpleArmor,
    <iceandfire:sea_serpent_scales_red> : tideRedArmor,
    <iceandfire:sea_serpent_scales_teal> : tideTealArmor
} as IItemStack[][IItemStack];

var shinyScales = <iceandfire:shiny_scales>;

for mat, armor in tideArmorMap{
    recipes.remove(armor[counter]);// boots 0
    Anvil.addShaped(armor[counter],[
        [null, null, mat],
        [shinyScales, mat, plateArmor],
        [shinyScales, mat, plateArmor],
        [null, null, mat]
    ]);

    counter += 1;
    recipes.remove(armor[counter]);// chestplate 1
    Anvil.addShaped(armor[counter],[
        [plateArmor, mat, mat, shinyScales],
        [null, mat, mat, mat],
        [null, mat, mat, mat],
        [plateArmor, mat, mat, shinyScales]
    ]);

    counter += 1;
    recipes.remove(armor[counter]);// helmet 2
    Anvil.addShaped(armor[counter],[
        [shinyScales, mat, mat, plateArmor],
        [mat, null, null, null],
        [mat, null, null, null],
        [shinyScales, mat, mat, plateArmor]
    ]);

    counter += 1;
    recipes.remove(armor[counter]);// leggings 3
    Anvil.addShaped(armor[counter],[
        [plateArmor, plateArmor, plateArmor, shinyScales],
        [mat, mat, null, null],
        [mat, mat, null, null],
        [plateArmor, plateArmor, plateArmor, shinyScales]
    ]);

    counter = 0;
}

// Spartan Weapons

// Viridium: Saber, Katana, Staff, Spear, Dagger
// Mythril: Rapier, Longsword, Glaive, Lance, Mace, Boomerang, Javelin, Lance
// Onyx: Halberd, Greatsword, Warhammer, Pike, Battleaxe, Hammer

JEI.removeAndHide(<spartancompat:longsword_adamantium>);
JEI.removeAndHide(<spartancompat:halberd_adamantium>);
JEI.removeAndHide(<spartancompat:greatsword_adamantium>);
JEI.removeAndHide(<spartancompat:hammer_adamantium>);
JEI.removeAndHide(<spartancompat:warhammer_adamantium>);
JEI.removeAndHide(<spartancompat:pike_adamantium>);
JEI.removeAndHide(<spartancompat:lance_adamantium>);
JEI.removeAndHide(<spartancompat:longbow_adamantium>);
JEI.removeAndHide(<spartancompat:crossbow_adamantium>);
JEI.removeAndHide(<spartancompat:rapier_adamantium>);
JEI.removeAndHide(<spartancompat:mace_adamantium>);
JEI.removeAndHide(<spartancompat:battleaxe_adamantium>);
JEI.removeAndHide(<spartancompat:glaive_adamantium>);
JEI.removeAndHide(<spartancompat:boomerang_adamantium>);
JEI.removeAndHide(<spartancompat:javelin_adamantium>);

JEI.removeAndHide(<spartancompat:halberd_mythril>);
JEI.removeAndHide(<spartancompat:greatsword_mythril>);
JEI.removeAndHide(<spartancompat:hammer_mythril>);
JEI.removeAndHide(<spartancompat:warhammer_mythril>);
JEI.removeAndHide(<spartancompat:pike_mythril>);
JEI.removeAndHide(<spartancompat:longbow_mythril>);
JEI.removeAndHide(<spartancompat:crossbow_mythril>);
JEI.removeAndHide(<spartancompat:battleaxe_mythril>);
JEI.removeAndHide(<spartancompat:saber_mythril>);
JEI.removeAndHide(<spartancompat:katana_mythril>);
JEI.removeAndHide(<spartancompat:staff_mythril>);
JEI.removeAndHide(<spartancompat:spear_mythril>);
JEI.removeAndHide(<spartancompat:dagger_mythril>);

JEI.removeAndHide(<spartancompat:longsword_onyx>);
JEI.removeAndHide(<spartancompat:longbow_onyx>);
JEI.removeAndHide(<spartancompat:crossbow_onyx>);
JEI.removeAndHide(<spartancompat:rapier_onyx>);
JEI.removeAndHide(<spartancompat:lance_onyx>);
JEI.removeAndHide(<spartancompat:mace_onyx>);
JEI.removeAndHide(<spartancompat:glaive_onyx>);
JEI.removeAndHide(<spartancompat:boomerang_onyx>);
JEI.removeAndHide(<spartancompat:javelin_onyx>);
JEI.removeAndHide(<spartancompat:saber_onyx>);
JEI.removeAndHide(<spartancompat:staff_onyx>);
JEI.removeAndHide(<spartancompat:spear_onyx>);
JEI.removeAndHide(<spartancompat:dagger_onyx>);

var mythrilThrow = itemUtils.getItemsByRegexRegistryName("spartancompat:(throwing_axe_|throwing_knife_)mythril") as IItemStack[];
var dragonsteelFireThrow = itemUtils.getItemsByRegexRegistryName("spartanfire:(throwing_axe_|throwing_knife_)fire_dragonsteel") as IItemStack[];
var dragonsteelIceThrow = itemUtils.getItemsByRegexRegistryName("spartanfire:(throwing_axe_|throwing_knife_)ice_dragonsteel") as IItemStack[];
var dragonBoneThrow = itemUtils.getItemsByRegexRegistryName("spartanfire:(throwing_axe_|throwing_knife_)dragonbone") as IItemStack[];

var anvilThrowMap = {
    [<ore:ingotMythril>, <minecraft:blaze_rod>] : mythrilThrow,
    [<iceandfire:dragonsteel_fire_ingot>, <spartanfire:witherbone_handle>] : dragonsteelFireThrow,
    [<iceandfire:dragonsteel_ice_ingot>, <spartanfire:witherbone_handle>] : dragonsteelIceThrow,
    [<iceandfire:dragonbone>, <spartanfire:witherbone_handle>] : dragonBoneThrow
} as IItemStack[][IIngredient[]];

var throwcounter = 0;

for mat, spart in anvilThrowMap{  
    recipes.remove(spart[throwcounter]);// throwing axe 0
    Anvil.addShaped(spart[throwcounter],[
        [mat[1], null, null, null],
        [mat[0], mat[0], null, null],
        [null, null, null, null],
        [null, null, null, null]
    ]);
    throwcounter += 1;

    recipes.remove(spart[throwcounter]);// throwing knife 1
    Anvil.addShaped(spart[throwcounter],[
        [mat[1], null, null, null],
        [mat[0], null, null, null],
        [null, null, null, null],
        [null, null, null, null]
    ]);
    throwcounter = 0;
}
var mythrilSpart = itemUtils.getItemsByRegexRegistryName("spartancompat:.*(?<!crossbow_|throwing_axe_|throwing_knife_)mythril") as IItemStack[];
var onyxSpart  = itemUtils.getItemsByRegexRegistryName("spartancompat:.*(?<!crossbow_|throwing_axe_|throwing_knife_)onyx") as IItemStack[];
var viridiumSpart = itemUtils.getItemsByRegexRegistryName("spartancompat:.*(?<!crossbow_|throwing_axe_|throwing_knife_)adamantium") as IItemStack[];
var dragonsteelFireSpart = itemUtils.getItemsByRegexRegistryName("spartanfire:.*(?<!crossbow_|throwing_axe_|throwing_knife_)fire_dragonsteel") as IItemStack[];
var dragonsteelIceSpart = itemUtils.getItemsByRegexRegistryName("spartanfire:.*(?<!crossbow_|throwing_axe_|throwing_knife_)ice_dragonsteel") as IItemStack[];
var dragonBoneSpart = itemUtils.getItemsByRegexRegistryName("spartanfire:.*(?<!crossbow_|throwing_axe_|throwing_knife_|ice_|fire_)dragonbone") as IItemStack[];

var anvilSpartMap = {
    [<ore:ingotMythril>, <minecraft:blaze_rod>] : mythrilSpart,
    [<ore:gemOnyx>, <minecraft:blaze_rod>] : onyxSpart,
    [<ore:ingotViridium>, <minecraft:blaze_rod>] : viridiumSpart,
    [<iceandfire:dragonsteel_fire_ingot>, <spartanfire:witherbone_handle>] : dragonsteelFireSpart,
    [<iceandfire:dragonsteel_ice_ingot>, <spartanfire:witherbone_handle>] : dragonsteelIceSpart,
    [<iceandfire:dragonbone>, <spartanfire:witherbone_handle>] : dragonBoneSpart
} as IItemStack[][IIngredient[]];

for mat, spart in anvilSpartMap{
    if(mat has <ore:gemOnyx> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// battleaxe 0
        Anvil.addShaped(spart[counter],[
            [mat[0], mat[0], mat[0], null],
            [null, mat[0], mat[1], mat[1]],
            [null, mat[0], null, null],
            [mat[0], mat[0], mat[0], null]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotMythril> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// boomerang 1
        Anvil.addShaped(spart[counter],[
            [mat[0], mat[1], mat[1]],
            [mat[1], null, null],
            [mat[1], null, null]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotViridium> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// dagger 2
        Anvil.addShaped(spart[counter],[
            [mat[0], mat[1]]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotMythril> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// glaive 3
        Anvil.addShaped(spart[counter],[
            [null, mat[0], null, mat[1]],
            [null, null, mat[1], null],
            [mat[0], mat[1], null, null],
            [mat[0], mat[0], null, null]
        ]);
    }

    counter += 1;
    if(mat has <ore:gemOnyx> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// greatsword 4
        Anvil.addShaped(spart[counter],[
            [null, mat[0], mat[0], mat[0]],
            [mat[0], mat[0], mat[0], mat[1]],
            [null, mat[0], mat[0], mat[0]]
        ]);
    }

    counter += 1;
    if(mat has <ore:gemOnyx> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// halberd 5
        Anvil.addShaped(spart[counter],[
            [null, null, null, mat[0]],
            [null, mat[0], mat[1], null],
            [mat[0], mat[1], null, null],
            [mat[0], null, null, null]
        ]);
    }

    counter += 1;
    if(mat has <ore:gemOnyx> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// hammer 6
        Anvil.addShaped(spart[counter],[
            [mat[0], mat[0], null, null],
            [mat[0], mat[0], mat[1], mat[1]],
            [mat[0], mat[0], mat[1], mat[1]],
            [mat[0], mat[0], null, null]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotMythril> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// javelin 7
        Anvil.addShaped(spart[counter],[
            [mat[0], mat[0], mat[1]],
        ]);
    }


    counter += 1;
    if(mat has <ore:ingotViridium> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// katana 8
        Anvil.addShaped(spart[counter],[
            [null, null, null, mat[1]],
            [null, null, mat[0], null],
            [null, mat[0], null, null],
            [mat[0], null, null, null]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotMythril> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// lance 9
        Anvil.addShaped(spart[counter],[
            [null, null, mat[0], mat[1]],
            [null, null, mat[1], mat[0]],
            [null, mat[1], null, null],
            [mat[0], null, null, null]
        ]);
    }

    counter += 1;
    if(!(mat has <minecraft:blaze_rod>)){
        recipes.remove(spart[counter]);// longbow 10
        for stick in <ore:stickWood>.items{
            Anvil.addShaped(spart[counter],[
                [mat[1], stick, mat[0], mat[0]],
                [stick, null, null, <betterwithmods:material:3>],
                [mat[0], null, null, <betterwithmods:material:3>],
                [mat[0], <betterwithmods:material:3>, <betterwithmods:material:3>, null]
            ]);
        }
    }

    counter += 1;
    if(mat has <ore:ingotMythril> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);//longsword 11
        Anvil.addShaped(spart[counter],[
            [null, null, null, mat[0]],
            [mat[0], mat[0], mat[0], mat[1]],
            [null, null, null, mat[0]]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotMythril> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// mace 12
        Anvil.addShaped(spart[counter],[
            [null, null, null, mat[1]],
            [mat[0], mat[0], mat[1], null],
            [mat[0], mat[1], mat[0], null],
            [mat[0], mat[0], mat[0], null]
        ]);
    }

    counter += 1;
    if(mat has <ore:gemOnyx> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// pike 13
        Anvil.addShaped(spart[counter],[
            [null, null, null, null],
            [null, null, null, null],
            [mat[0], mat[0], mat[1], mat[1]]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotMythril> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// rapier 14
        Anvil.addShaped(spart[counter],[
            [null, null, mat[0], mat[1]],
            [null, null, mat[0], mat[0]],
            [null, mat[0], null, null],
            [mat[0], null, null, null]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotViridium> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// saber 15
        Anvil.addShaped(spart[counter],[
            [null, null, null, mat[0]],
            [mat[0], mat[0], mat[0], mat[1]]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotViridium> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// spear 16
        Anvil.addShaped(spart[counter],[
            [mat[0], mat[0], mat[1]]
        ]);
    }

    counter += 1;
    if(mat has <ore:ingotViridium> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// staff 17
        Anvil.addShaped(spart[counter],[
            [null, null, null, null],
            [mat[0], mat[1], mat[1], mat[0]]
        ]);
    }

    counter += 1;
    if(mat has <ore:gemOnyx> || mat has <spartanfire:witherbone_handle>){
        recipes.remove(spart[counter]);// warhammer 18
        Anvil.addShaped(spart[counter],[
            [null, null, null, null],
            [mat[0], mat[0], null, null],
            [mat[0], mat[0], mat[1], mat[0]],
            [mat[0], mat[0], null, null]
        ]);
    }

    counter = 0;
}

//TF Spartan weapons
recipes.removeByMod("spartantwilight");
JEI.removeAndHide(<spartantwilight:blaze_pole>);

//Fiery removal
JEI.removeAndHide(<spartantwilight:greatsword_fiery>);
JEI.removeAndHide(<spartantwilight:longsword_fiery>);
JEI.removeAndHide(<spartantwilight:saber_fiery>);
JEI.removeAndHide(<spartantwilight:rapier_fiery>);
JEI.removeAndHide(<spartantwilight:dagger_fiery>);
JEI.removeAndHide(<spartantwilight:spear_fiery>);
JEI.removeAndHide(<spartantwilight:pike_fiery>);
JEI.removeAndHide(<spartantwilight:lance_fiery>);
JEI.removeAndHide(<spartantwilight:warhammer_fiery>);
JEI.removeAndHide(<spartantwilight:throwing_knife_fiery>);
JEI.removeAndHide(<spartantwilight:javelin_fiery>);
JEI.removeAndHide(<spartantwilight:battleaxe_fiery>);
JEI.removeAndHide(<spartantwilight:boomerang_fiery>);
JEI.removeAndHide(<spartantwilight:mace_fiery>);
JEI.removeAndHide(<spartantwilight:staff_fiery>);
JEI.removeAndHide(<spartantwilight:glaive_fiery>);

//Steeleaf removal
JEI.removeAndHide(<spartantwilight:katana_steeleaf>);
JEI.removeAndHide(<spartantwilight:greatsword_steeleaf>);
JEI.removeAndHide(<spartantwilight:longsword_steeleaf>);
JEI.removeAndHide(<spartantwilight:spear_steeleaf>);
JEI.removeAndHide(<spartantwilight:pike_steeleaf>);
JEI.removeAndHide(<spartantwilight:lance_steeleaf>);
JEI.removeAndHide(<spartantwilight:halberd_steeleaf>);
JEI.removeAndHide(<spartantwilight:warhammer_steeleaf>);
JEI.removeAndHide(<spartantwilight:hammer_steeleaf>);
JEI.removeAndHide(<spartantwilight:throwing_axe_steeleaf>);
JEI.removeAndHide(<spartantwilight:javelin_steeleaf>);
JEI.removeAndHide(<spartantwilight:battleaxe_steeleaf>);
JEI.removeAndHide(<spartantwilight:boomerang_steeleaf>);
JEI.removeAndHide(<spartantwilight:mace_steeleaf>);
JEI.removeAndHide(<spartantwilight:staff_steeleaf>);
JEI.removeAndHide(<spartantwilight:glaive_steeleaf>);

//Ironroot removal
JEI.removeAndHide(<spartantwilight:katana_ironwood>);
JEI.removeAndHide(<spartantwilight:greatsword_ironwood>);
JEI.removeAndHide(<spartantwilight:longsword_ironwood>);
JEI.removeAndHide(<spartantwilight:saber_ironwood>);
JEI.removeAndHide(<spartantwilight:rapier_ironwood>);
JEI.removeAndHide(<spartantwilight:dagger_ironwood>);
JEI.removeAndHide(<spartantwilight:spear_ironwood>);
JEI.removeAndHide(<spartantwilight:pike_ironwood>);
JEI.removeAndHide(<spartantwilight:lance_ironwood>);
JEI.removeAndHide(<spartantwilight:halberd_ironwood>);
JEI.removeAndHide(<spartantwilight:hammer_ironwood>);
JEI.removeAndHide(<spartantwilight:throwing_axe_ironwood>);
JEI.removeAndHide(<spartantwilight:throwing_knife_ironwood>);
JEI.removeAndHide(<spartantwilight:javelin_ironwood>);
JEI.removeAndHide(<spartantwilight:mace_ironwood>);
JEI.removeAndHide(<spartantwilight:glaive_ironwood>);

//Knightmetal removal
JEI.removeAndHide(<spartantwilight:katana_knightly>);
JEI.removeAndHide(<spartantwilight:saber_knightly>);
JEI.removeAndHide(<spartantwilight:rapier_knightly>);
JEI.removeAndHide(<spartantwilight:dagger_knightly>);
JEI.removeAndHide(<spartantwilight:spear_knightly>);
JEI.removeAndHide(<spartantwilight:pike_knightly>);
JEI.removeAndHide(<spartantwilight:lance_knightly>);
JEI.removeAndHide(<spartantwilight:halberd_knightly>);
JEI.removeAndHide(<spartantwilight:warhammer_knightly>);
JEI.removeAndHide(<spartantwilight:hammer_knightly>);
JEI.removeAndHide(<spartantwilight:throwing_axe_knightly>);
JEI.removeAndHide(<spartantwilight:throwing_knife_knightly>);
JEI.removeAndHide(<spartantwilight:battleaxe_knightly>);
JEI.removeAndHide(<spartantwilight:boomerang_knightly>);
JEI.removeAndHide(<spartantwilight:mace_knightly>);
JEI.removeAndHide(<spartantwilight:staff_knightly>);

var fieryIngot = <ore:ingotFiery>;
var steeleaf = <ore:ingotSteeleaf>;
var ironroot = <ore:ingotIronwood>;
var knightIngot = <ore:ingotKnightmetal>;
var witherHandle = <spartanfire:witherbone_handle>;
var stick = <ore:stickWood>;

//Fiery
Anvil.addShapedFixed(<spartantwilight:katana_fiery>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}),[
[null, null, null, fieryIngot],
[null, null, fieryIngot, null],
[null, fieryIngot, null, null],
[witherHandle, null, null, null]]);

Anvil.addShapedFixed(<spartantwilight:hammer_fiery>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}),[
[fieryIngot, fieryIngot, fieryIngot, fieryIngot],
[fieryIngot, fieryIngot, fieryIngot, fieryIngot],
[null, witherHandle, witherHandle, null],
[null, witherHandle, witherHandle, null]]);

Anvil.addShapedFixed(<spartantwilight:halberd_fiery>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}),[
[null, null, fieryIngot, fieryIngot],
[null, fieryIngot, witherHandle, null],
[null, witherHandle, null, null],
[fieryIngot, null, null, null]]);

Anvil.addShapedFixed(<spartantwilight:throwing_axe_fiery>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}),[
[witherHandle, fieryIngot, null, null],
[null, fieryIngot, null, null],
[null, null, null, null],
[null, null, null, null]]);

Anvil.addShapedFixed(<spartantwilight:longbow_fiery>,[
[witherHandle,stick,fieryIngot,fieryIngot],
[stick,null,null,<betterwithmods:material:3>],
[fieryIngot,null,null,<betterwithmods:material:3>],
[fieryIngot,<betterwithmods:material:3>,<betterwithmods:material:3>,null]]);

//Steeleaf
Anvil.addShapedFixed(<spartantwilight:saber_steeleaf>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),[
[null, steeleaf, null, null],
[null, steeleaf, null, null],
[null, steeleaf, null, null],
[steeleaf, witherHandle, null, null]]);

Anvil.addShapedFixed(<spartantwilight:dagger_steeleaf>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),[
[steeleaf, null, null, null],
[witherHandle, null, null, null],
[null, null, null, null],
[null, null, null, null]]);

Anvil.addShapedFixed(<spartantwilight:rapier_steeleaf>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),[
[null, null, null, steeleaf],
[null, null, steeleaf, null],
[steeleaf, steeleaf, null, null],
[witherHandle, steeleaf, null, null]]);

Anvil.addShapedFixed(<spartantwilight:throwing_knife_steeleaf>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),[
[witherHandle, steeleaf, null, null],
[null, null, null, null],
[null, null, null, null],
[null, null, null, null]]);

Anvil.addShapedFixed(<spartantwilight:longbow_steeleaf>,[
[witherHandle,stick,steeleaf,steeleaf],
[stick,null,null,<betterwithmods:material:3>],
[steeleaf,null,null,<betterwithmods:material:3>],
[steeleaf,<betterwithmods:material:3>,<betterwithmods:material:3>,null]]);

//Ironroot
Anvil.addShapedFixed(<spartantwilight:staff_ironwood>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}),[
[null, ironroot, null, null],
[null, witherHandle, null, null],
[null, witherHandle, null, null],
[null ,ironroot, null, null]]);

Anvil.addShapedFixed(<spartantwilight:warhammer_ironwood>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}),[
[null, ironroot, ironroot, ironroot],
[null, ironroot, ironroot, ironroot],
[null, null, witherHandle, null],
[null, null, ironroot, null]]);

Anvil.addShapedFixed(<spartantwilight:battleaxe_ironwood>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}),[
[ironroot, null, null, ironroot],
[ironroot, ironroot, ironroot, ironroot],
[ironroot, witherHandle, null, ironroot],
[null, witherHandle, null, null]]);

Anvil.addShapedFixed(<spartantwilight:boomerang_ironwood>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}),[
[ironroot, witherHandle, witherHandle, null],
[witherHandle, null, null, null],
[witherHandle, null, null, null],
[null, null, null, null]]);

Anvil.addShapedFixed(<spartantwilight:longbow_ironwood>,[
[witherHandle,stick,ironroot,ironroot],
[stick,null,null,<betterwithmods:material:3>],
[ironroot,null,null,<betterwithmods:material:3>],
[ironroot,<betterwithmods:material:3>,<betterwithmods:material:3>,null]]);

//Knightmetal
Anvil.addShapedFixed(<spartantwilight:greatsword_knightly>,[
[null, knightIngot, null, null],
[knightIngot, knightIngot, knightIngot, null],
[knightIngot, knightIngot, knightIngot, null],
[knightIngot, witherHandle, knightIngot, null]]);

Anvil.addShapedFixed(<spartantwilight:longsword_knightly>,[
[null, knightIngot, null, null],
[null, knightIngot, null, null],
[null, knightIngot, null, null],
[knightIngot, witherHandle, knightIngot, null]]);

Anvil.addShapedFixed(<spartantwilight:glaive_knightly>,[
[null, null, knightIngot, knightIngot],
[null, null, witherHandle, knightIngot],
[knightIngot, witherHandle, null, null],
[witherHandle, null, null, null]]);

Anvil.addShapedFixed(<spartantwilight:javelin_knightly>,[
[knightIngot, null, null, null],
[knightIngot, null, null, null],
[witherHandle, null, null, null],
[null, null, null, null]]);

Anvil.addShapedFixed(<spartantwilight:longbow_knightly>,[
[witherHandle,stick,knightIngot,knightIngot],
[stick,null,null,<betterwithmods:material:3>],
[knightIngot,null,null,<betterwithmods:material:3>],
[knightIngot,<betterwithmods:material:3>,<betterwithmods:material:3>,null]]);

// Tools + Sword + Bow

var dragonsteelFireTool = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonsteel_fire_(axe|hoe|pickaxe|shovel|sword)") as IItemStack[];
var dragonsteelIceTool = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonsteel_ice_(axe|hoe|pickaxe|shovel|sword)") as IItemStack[];
var dragonBoneTool = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonbone_(axe|hoe|pickaxe|shovel|sword)") as IItemStack[];
var soulforgedSteelTool = itemUtils.getItemsByRegexRegistryName("betterwithmods:steel_(axe|hoe|pickaxe|shovel)");
var meteorTool = itemUtils.getItemsByRegexRegistryName("nyx:meteor_(axe|hoe|pickaxe|shovel|sword)") as IItemStack[];

var anvilToolMap = {
    [<iceandfire:dragonsteel_fire_ingot>, <iceandfire:witherbone>] : dragonsteelFireTool,
    [<iceandfire:dragonsteel_ice_ingot>, <iceandfire:witherbone>] : dragonsteelIceTool,
    [<iceandfire:dragonbone>, <iceandfire:witherbone>] : dragonBoneTool,
    [<betterwithmods:material:14>, <betterwithmods:material:36>] : soulforgedSteelTool,
    [<nyx:meteor_ingot>, <betterwithmods:material:36>] : meteorTool
} as IItemStack[][IItemStack[]];

    Anvil.addShaped(<atop:amethyst_axe>,[
        [null, null, null, <minecraft:blaze_rod>],
        [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, <minecraft:blaze_rod>, null],
        [<contenttweaker:exorite_ingot>, <minecraft:blaze_rod>, null,null],
        [<contenttweaker:exorite_ingot>, null, null, null]
    ]);

    Anvil.addShaped(<atop:amethyst_hoe>,[
        [null, null, null, <minecraft:blaze_rod>],
        [<contenttweaker:exorite_ingot>, null, <minecraft:blaze_rod>, null],
        [<contenttweaker:exorite_ingot>, <minecraft:blaze_rod>, null, null],
        [<minecraft:blaze_rod>, null, null, null]
    ]);

    Anvil.addShaped(<atop:amethyst_pickaxe>,[
        [null,null, null, <minecraft:blaze_rod>],
        [<contenttweaker:exorite_ingot>, null, <minecraft:blaze_rod>, null],
        [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, null, null],
        [null, <contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, null]
    ]);
    
    Anvil.addShaped(<atop:amethyst_shovel>,[
        [null, null, null, <minecraft:blaze_rod>],
        [null, null, <minecraft:blaze_rod>, null],
        [<contenttweaker:exorite_ingot>, <minecraft:blaze_rod>, null, null],
        [<contenttweaker:exorite_ingot>, <contenttweaker:exorite_ingot>, null, null]
    ]);

    recipes.remove(<twilightforest:ironwood_axe>);
    Anvil.addShaped(<twilightforest:ironwood_axe>.withTag({ench: [{lvl: 1 as short, id: 35 as short}]}),[
        [null, null, null, <iceandfire:witherbone>],
        [<ore:ingotIronwood>, <ore:ingotIronwood>, <iceandfire:witherbone>, null],
        [<ore:ingotIronwood>, <iceandfire:witherbone>, null,null],
        [<ore:ingotIronwood>, null, null, null]
    ]);

    recipes.remove(<twilightforest:ironwood_hoe>);
    Anvil.addShaped(<twilightforest:ironwood_hoe>.withTag({ench: [{lvl: 1 as short, id: 34}]}),[
        [null, null, null, <iceandfire:witherbone>],
        [<ore:ingotIronwood>, null, <iceandfire:witherbone>, null],
        [<ore:ingotIronwood>, <iceandfire:witherbone>, null, null],
        [<iceandfire:witherbone>, null, null, null]
    ]);

    recipes.remove(<twilightforest:ironwood_pickaxe>);
    Anvil.addShaped(<twilightforest:ironwood_pickaxe>.withTag({ench: [{lvl: 1 as short, id: 32 as short}]}),[
        [null,null, null, <iceandfire:witherbone>],
        [<ore:ingotIronwood>, null, <iceandfire:witherbone>, null],
        [<ore:ingotIronwood>, <ore:ingotIronwood>, null, null],
        [null, <ore:ingotIronwood>, <ore:ingotIronwood>, null]
    ]);
    
    recipes.remove(<twilightforest:ironwood_shovel>);
    Anvil.addShaped(<twilightforest:ironwood_shovel>.withTag({ench: [{lvl: 1 as short, id: 34 as short}]}),[
        [null, null, null, <iceandfire:witherbone>],
        [null, null, <iceandfire:witherbone>, null],
        [<ore:ingotIronwood>, <iceandfire:witherbone>, null, null],
        [<ore:ingotIronwood>, <ore:ingotIronwood>, null, null]
    ]);

    recipes.remove(<twilightforest:ironwood_sword>);
    Anvil.addShaped(<twilightforest:ironwood_sword>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}),[
        [null, null, <ore:ingotIronwood>, <spartanfire:witherbone_handle>],
        [null, null, <ore:ingotIronwood>, null],
        [null, <ore:ingotIronwood>, null, null],
        [<ore:ingotIronwood>, null, null, null]
    ]);

    recipes.remove(<twilightforest:steeleaf_axe>);
    Anvil.addShaped(<twilightforest:steeleaf_axe>.withTag({ench: [{lvl: 2 as short, id: 32 as short}]}),[
        [null, null, null, <iceandfire:witherbone>],
        [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, <iceandfire:witherbone>, null],
        [<ore:ingotSteeleaf>, <iceandfire:witherbone>, null,null],
        [<ore:ingotSteeleaf>, null, null, null]
    ]);

    recipes.remove(<twilightforest:steeleaf_hoe>);
    Anvil.addShaped(<twilightforest:steeleaf_hoe>.withTag({ench: [{lvl: 2 as short, id: 34}]}),[
        [null, null, null, <iceandfire:witherbone>],
        [<ore:ingotSteeleaf>, null, <iceandfire:witherbone>, null],
        [<ore:ingotSteeleaf>, <iceandfire:witherbone>, null, null],
        [<iceandfire:witherbone>, null, null, null]
    ]);

    recipes.remove(<twilightforest:steeleaf_pickaxe>);
    Anvil.addShaped(<twilightforest:steeleaf_pickaxe>.withTag({ench: [{lvl: 2 as short, id: 35 as short}]}),[
        [null,null, null, <iceandfire:witherbone>],
        [<ore:ingotSteeleaf>, null, <iceandfire:witherbone>, null],
        [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, null, null],
        [null, <ore:ingotSteeleaf>, <ore:ingotSteeleaf>, null]
    ]);
    
    recipes.remove(<twilightforest:steeleaf_shovel>);
    Anvil.addShaped(<twilightforest:steeleaf_shovel>.withTag({ench: [{lvl: 2 as short, id: 32 as short}]}),[
        [null, null, null, <iceandfire:witherbone>],
        [null, null, <iceandfire:witherbone>, null],
        [<ore:ingotSteeleaf>, <iceandfire:witherbone>, null, null],
        [<ore:ingotSteeleaf>, <ore:ingotSteeleaf>, null, null]
    ]);

    recipes.remove(<twilightforest:steeleaf_sword>);
    Anvil.addShaped(<twilightforest:steeleaf_sword>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),[
        [null, null, <ore:ingotSteeleaf>, <spartanfire:witherbone_handle>],
        [null, null, <ore:ingotSteeleaf>, null],
        [null, <ore:ingotSteeleaf>, null, null],
        [<ore:ingotSteeleaf>, null, null, null]
    ]);

    recipes.remove(<twilightforest:fiery_sword>);
    Anvil.addShaped(<twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}),[
        [null, null, <ore:ingotFiery>, <spartanfire:witherbone_handle>],
        [null, null, <ore:ingotFiery>, null],
        [null, <ore:ingotFiery>, null, null],
        [<ore:ingotFiery>, null, null, null]
    ]);

    recipes.remove(<twilightforest:knightmetal_sword>);
    Anvil.addShaped(<twilightforest:knightmetal_sword>,[
        [null, null, <ore:ingotKnightmetal>, <spartanfire:witherbone_handle>],
        [null, null, <ore:ingotKnightmetal>, null],
        [null, <ore:ingotKnightmetal>, null, null],
        [<ore:ingotKnightmetal>, null, null, null]
    ]);

    recipes.remove(<twilightforest:fiery_pickaxe>);
    Anvil.addShaped(<twilightforest:fiery_pickaxe>,[
        [null,null, null, <iceandfire:witherbone>],
        [<ore:ingotFiery>, null, <iceandfire:witherbone>, null],
        [<ore:ingotFiery>, <ore:ingotFiery>, null, null],
        [null, <ore:ingotFiery>, <ore:ingotFiery>, null]
    ]);

    recipes.remove(<twilightforest:knightmetal_pickaxe>);
    Anvil.addShaped(<twilightforest:knightmetal_pickaxe>,[
        [null,null, null, <iceandfire:witherbone>],
        [<ore:ingotKnightmetal>, null, <iceandfire:witherbone>, null],
        [<ore:ingotKnightmetal>, <ore:ingotKnightmetal>, null, null],
        [null, <ore:ingotKnightmetal>, <ore:ingotKnightmetal>, null]
    ]);

    recipes.remove(<twilightforest:knightmetal_axe>);
    Anvil.addShaped(<twilightforest:knightmetal_axe>,[
        [null, null, null, <iceandfire:witherbone>],
        [<ore:ingotKnightmetal>, <ore:ingotKnightmetal>, <iceandfire:witherbone>, null],
        [<ore:ingotKnightmetal>, <iceandfire:witherbone>, null,null],
        [<ore:ingotKnightmetal>, null, null, null]
    ]);

for mat, tool in anvilToolMap{
    if(mat has <betterwithmods:material:14>){
        Anvil.removeShaped(tool[counter]);
    } else{
        recipes.remove(tool[counter]);// axe 0
    }
    Anvil.addShaped(tool[counter],[
        [null, null, null, mat[1]],
        [mat[0], mat[0], mat[1], null],
        [mat[0], mat[1], null,null],
        [mat[0], null, null, null]
    ]);

    counter += 1;
    if(mat has <betterwithmods:material:14>){
        Anvil.removeShaped(tool[counter]);
    } else{
        recipes.remove(tool[counter]);// hoe 1
    }
    Anvil.addShaped(tool[counter],[
        [null, null, null, mat[1]],
        [mat[0], null, mat[1], null],
        [mat[0], mat[1], null, null],
        [mat[1], null, null, null]
    ]);

    counter += 1;
    if(mat has <betterwithmods:material:14>){
        Anvil.removeShaped(tool[counter]);
    } else{
        recipes.remove(tool[counter]);// pickaxe 2
    }
    Anvil.addShaped(tool[counter],[
        [null,null, null, mat[1]],
        [mat[0], null, mat[1], null],
        [mat[0], mat[0], null, null],
        [null, mat[0], mat[0], null]
    ]);

    counter += 1;
    if(mat has <betterwithmods:material:14>){
        Anvil.removeShaped(tool[counter]);
    } else{
        recipes.remove(tool[counter]);// shovel 3
    }
    Anvil.addShaped(tool[counter],[
        [null, null, null, mat[1]],
        [null, null, mat[1], null],
        [mat[0], mat[1], null, null],
        [mat[0], mat[0], null, null]
    ]);

    counter += 1;
    if(!(mat has <betterwithmods:material:14>)){
        recipes.remove(tool[counter]);// sword 4
        Anvil.addShaped(tool[counter],[
            [null, null, mat[0], <spartanfire:witherbone_handle>],
            [null, null, mat[0], null],
            [null, mat[0], null, null],
            [mat[0], null, null, null]
        ]);
    }

    counter = 0;
}

recipes.remove(<iceandfire:dragonbone_bow>);
Anvil.addShaped(<iceandfire:dragonbone_bow>,[
    [null, null, null, <iceandfire:dragonbone>],
    [null, <iceandfire:witherbone>, <iceandfire:dragonbone>, <minecraft:string>],
    [null, <iceandfire:dragonbone>, <minecraft:string>, null],
    [<iceandfire:dragonbone>, <minecraft:string>, null, null]
]);

recipes.remove(<nyx:meteor_bow>);

recipes.remove(<simpleores:mythril_bow>);
recipes.remove(<simpleores:mythril_sword>);
recipes.remove(<simpleores:mythril_pickaxe>);
recipes.remove(<simpleores:mythril_axe>);
recipes.remove(<simpleores:mythril_shovel>);
recipes.remove(<simpleores:mythril_hoe>);

recipes.remove(<simpleores:adamantium_sword>);
recipes.remove(<simpleores:adamantium_pickaxe>);
recipes.remove(<simpleores:adamantium_axe>);
recipes.remove(<simpleores:adamantium_shovel>);
recipes.remove(<simpleores:adamantium_hoe>);

recipes.remove(<simpleores:onyx_sword>);
recipes.remove(<simpleores:onyx_pickaxe>);
recipes.remove(<simpleores:onyx_axe>);
recipes.remove(<simpleores:onyx_shovel>);
recipes.remove(<simpleores:onyx_hoe>);

val viri = <ore:ingotViridium>;
val myth = <ore:ingotMythril>;
val onyx = <ore:gemOnyx>;
val brod = <minecraft:blaze_rod>;
val orod = <simpleores:onyx_rod>;
val mrod = <simpleores:mythril_rod>;
val strings = <minecraft:string>;
var neths = <minecraft:nether_star>;
var mbow = <simpleores:mythril_bow>;
var diam = <ore:gemDiamond>;

Anvil.addShaped(<simpleores:adamantium_sword>, [
   [null, null, viri, brod],// viridium
   [null, null, viri, null],
   [null, viri, null, null],
   [viri, null, null, null]
]);
Anvil.addShaped(<simpleores:adamantium_pickaxe>, [
   [null,null, null, viri],
   [viri, null, brod, null],
   [viri, brod, null, null],
   [null, viri, viri, null]
]);
Anvil.addShaped(<simpleores:adamantium_axe>, [
   [null, viri, null, viri],
   [viri, viri, brod, null],
   [viri, brod, null, null]
]);
Anvil.addShaped(<simpleores:adamantium_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [viri, brod, null, null],
   [viri, viri, null, null]
]);
Anvil.addShaped(<simpleores:adamantium_hoe>, [
   [null, viri, null, viri],
   [viri, null, brod, null],
   [viri, brod, null, null],
   [brod, null, null, null]
]);

Anvil.addShaped(<simpleores:mythril_sword>, [
   [null, null, null, brod],// mythril
   [null, null, myth, null],
   [null, mrod, null, null],
   [myth, null, null, null]
]);

val enchantmentsMythrilBow as IEnchantmentDefinition[] = [<enchantment:randomenchantments:quickdraw>];
var enchantmentMapMythrilBow as IData = {};

enchantmentMapMythrilBow += enchantmentsMythrilBow[0].makeEnchantment(2).makeTag();

Anvil.addShaped(<nyx:meteor_bow>/*.withTag(enchantmentMapMythrilBow)*/, [   
   [null, null, null, <nyx:meteor_ingot>],
   [null, brod, <nyx:meteor_ingot>, strings],
   [null, <nyx:meteor_ingot>, strings, null],
   [<nyx:meteor_ingot>, strings, null, null]
]);

Anvil.addShaped(<simpleores:mythril_bow>/*.withTag(enchantmentMapMythrilBow)*/, [   
   [null, null, null, mrod],
   [null, brod, myth, strings],
   [null, myth, strings, null],
   [mrod, strings, null, null]
]);
Anvil.addShaped(<simpleores:mythril_pickaxe>, [
   [null,null, null, brod],
   [myth, null, brod, null],
   [myth, myth, null, null],
   [null, myth, myth, null]
]);
Anvil.addShaped(<simpleores:mythril_axe>, [
   [null, null, null, brod],
   [myth, myth, brod, null],
   [myth, brod, null,null],
   [mrod, null, null, null]
]);
Anvil.addShaped(<simpleores:mythril_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [myth, brod, null, null],
   [myth, myth, null, null]
]);
Anvil.addShaped(<simpleores:mythril_hoe>, [
   [null, null, null, brod],
   [mrod, null, brod, null],
   [mrod, brod, null, null],
   [brod, null, null, null]
]);

Anvil.addShaped(<simpleores:onyx_sword>, [
   [null, null, null, brod],// onyx and bow replacement
   [null, null, orod, null],
   [null, orod, null, null],
   [orod, null, null, null]
]);

JEI.removeAndHide(<simpleores:onyx_bow>);
Anvil.removeShaped(<betterwithaddons:greatbow>);
<betterwithaddons:greatbow>.maxDamage = 1000;

val enchantments1 as IEnchantmentDefinition[] = [<enchantment:minecraft:flame>, <enchantment:randomenchantments:quickdraw>];
var enchantmentMap1 as IData = {};

enchantmentMap1 += enchantments1[0].makeEnchantment(1).makeTag();
enchantmentMap1 += enchantments1[1].makeEnchantment(1).makeTag();

Anvil.addShaped(<betterwithaddons:greatbow>.withTag(enchantmentMap1), [
   [null, null, null, orod],
   [null, <minecraft:nether_star>, orod, <quark:biotite>],
   [null, orod, mbow, null],
   [orod, <quark:biotite>, null, null]
]);

Anvil.addShaped(<simpleores:onyx_pickaxe>, [
   [null,null, null, brod],
   [onyx, null, brod, null],
   [onyx, onyx, null, null],
   [null, onyx, onyx, null]
]);
Anvil.addShaped(<simpleores:onyx_axe>, [
   [null, null, null, brod],
   [null, orod, brod, null],
   [orod, brod, null,null],
   [onyx, null, null, null]
]);
Anvil.addShaped(<simpleores:onyx_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [onyx, brod, null, null],
   [onyx, onyx, null, null]
]);
Anvil.addShaped(<simpleores:onyx_hoe>, [
   [null, null, null, brod],
   [orod, null, brod, null],
   [orod, brod, null, null],
   [brod, null, null, null]
]);