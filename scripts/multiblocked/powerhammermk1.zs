#loader multiblocked

import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

var definition as ComponentDefinition = MBDRegistry.getDefinition("multiblocked:power_hammer_mk1");
var pwrhmrmk1 = definition as ControllerDefinition;
val newRP = RecipeMap("power_hammer_1") as RecipeMap;
# Recipe.register(newRP);
RecipeMap.register(newRP);
pwrhmrmk1.recipeMap = newRP;

val PowerHammerRecipeNames = [
    "1break_clay_brick", 
    "1break_coade_brick", 
    "1break_masonry_brick", 
    "1break_nether_brick", 
    "1break_fiery_nether_brick", 
    "1break_mud_brick", 
    "1white_stone_recycling", 
    "1prismarine_to_prismshard", 
    "1prism_brick_to_prismshard_to", 
    "1flintblock_to_flint", 
    "1purpur_to_popped_chorus", 
    "1halite_to_salt", 
    "1dense_redstone", 
    "1dense_quartz", 
    "1ambrosium_to_magic_dust", 
    "1lignite_to_coal_dust", 
    "1lignite_cobble_to_coal_dust", 
    "1lormyte_crystal", 
    "1obsidian_dust", 
    "1obsidian_shard", 
    "1cobblestone_to_rocks", 
    "1entropy_cobblestone", 
    "1cracked_astral_block", 
    "1zinc_bits_to_dust", 
    "1gold_raw_to_dust", 
    "1meteor_shard_to_dust", 
    "1charcoal_pile_to_charcoal",  
    "1crab_murder", 
    "1wither_skull_to_dust", 
    "1smash_heart_1", 
    "1smash_heart_2", 
    "1smash_heart_3", 
    "1smash_heart_4", 
    "1sfs_plating", 
    "1refractorylump_fossil", 
    "1refractorylump_quartz", 
    "1refractorylump_radiantquartz",
    "1refractorylump_chalk",
    "1refractorylump_quartzite", 
    "1refractorylump_marble", 
    "1refractorylump_dolomite", 
    "1refractorylump_limestone", 
    "1refractorylump_chalk_cobble", 
    "1refractorylump_quartzite_cobble", 
    "1refractorylump_marble_cobble", 
    "1refractorylump_dolomite_cobble", 
    "1refractorylump_limestone_cobble", 
    "1blaze_lantern_to_powder", 
    "1dwarven_measures", 
    "1glass_shards"
] as string[];

val PowerHammerItemOutputs = [
    <minecraft:brick>*4, 
    <contenttweaker:brick_coade>*4, 
    <contenttweaker:masonry_brick>*4, 
    <minecraft:netherbrick>*4, 
    <netherex:fiery_netherbrick>*4, 
    <biomesoplenty:mud_brick>*4, 
    <betterwithmods:material:39>, 
    <minecraft:prismarine_shard>*3, 
    <minecraft:prismarine_shard>*8, 
    <minecraft:flint>*4, 
    <minecraft:chorus_fruit_popped>*3, 
    <animania:salt>*3, 
    <minecraft:redstone>*2,
    <minecraft:quartz>*2, 
    <contenttweaker:magic_blend>*18, 
    <betterwithmods:material:18>, 
    <betterwithmods:material:18>, 
    <endreborn:item_lormyte_crystal>*2, 
    <endreborn:catalyst>*2, 
    <endreborn:item_shard_obsidian>, 
    <pyrotech:rock:0> * 4, 
    <endreborn:block_entropy_end_stone>, 
    <nyx:cracked_star_block>, 
    <contenttweaker:material_part:36>, 
    <contenttweaker:material_part:29>, 
    <nyx:meteor_dust>, 
    <minecraft:coal:1>*6, 
    <quark:crab_shell>*2, 
    <quark:black_ash>*3, 
    <scalinghealth:crystalshard>*4, 
    <scalinghealth:crystalshard>*3, 
    <scalinghealth:crystalshard>*6, 
    <scalinghealth:crystalshard>*6,
    <betterwithmods:material:51>*16,  
    <pyrotech:material:8>*3, 
    <pyrotech:material:8>*1, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*3, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*3, 
    <minecraft:blaze_powder>*3, 
    <minecraft:written_book>.withTag({pages: ["{\"text\":\"And so, the Fellowship lived happily ever after.\\nThe End\"}"], author: "Foreck", title: "Dwarven Measures"}), 
    <quark:glass_shards:0>*4
]  as IItemStack[];

val PowerHammerItemInputs = [
    <contenttweaker:brick_minecraft_clay>, 
    <contenttweaker:brick_minecraft_stone>, 
    <contenttweaker:brick_pyrotech_masonry>, 
    <contenttweaker:brick_minecraft_nether>, 
    <contenttweaker:brick_netherex_fiery>, 
    <contenttweaker:brick_biomesoplenty_mud>,
    <betterwithaddons:whitebrick:2>,
    <minecraft:prismarine>,
    <minecraft:prismarine:1>,
    <betterwithmods:aesthetic:5>,
    <minecraft:purpur_block>,
    <contenttweaker:halite>,
    <pyrotech:material:36>,
    <pyrotech:material:37>, 
    <aether_legacy:ambrosium_block>,
    <undergroundbiomes:sedimentary_stone:4>,
    <contenttweaker:lignite_cobble>,
    <endreborn:block_lormyte_crystal>,
    <endreborn:item_shard_obsidian>,
    <minecraft:obsidian>,
    <minecraft:cobblestone>, 
    <minecraft:end_stone>, 
    <nyx:star_block>,  
    <pyrotech:rock:3>, 
    <contenttweaker:raw_gold>, 
    <nyx:meteor_shard>, 
    <contenttweaker:charcoal_pile>, 
    <harvestcraft:crabrawitem>, 
    <minecraft:skull:1>, 
    <bountifulbaubles:trinketbrokenheart>, 
    <bountifulbaubles:trinketshulkerheart>, 
    <iceandfire:fire_dragon_heart>, 
    <iceandfire:ice_dragon_heart>, 
    <betterwithmods:steel_block>, 
    <undergroundbiomes:fossil_piece:*>, 
    <minecraft:quartz>, 
    <arcanearchives:raw_quartz>, 
    <undergroundbiomes:sedimentary_stone:1>, 
    <undergroundbiomes:metamorphic_stone:3>, 
    <undergroundbiomes:metamorphic_stone:2>, 
    <undergroundbiomes:sedimentary_stone:5>, 
    <undergroundbiomes:sedimentary_stone:0>, 
    <contenttweaker:chalk_cobble>, 
    <undergroundbiomes:metamorphic_cobble:3>, 
    <undergroundbiomes:metamorphic_cobble:2>, 
    <contenttweaker:dolomite_cobble>, 
    <contenttweaker:limestone_cobble>, 
    <quark:blaze_lantern>, 
    <extraalchemy:potion_ring>.withTag({Potion: "minecraft:invisibility"}), 
    <minecraft:glass>
] as IItemStack[];

val PowerHammerNumModifier = [
    4, 
    4, 
    4, 
    4,
    4, 
    4,
    4,
    18,
    18,
    8,
    8,
    6,
    2,
    2, 
    16, 
    16, 
    16, 
    8,
    16,
    64,
    3, 
    4, 
    64,  
    4, 
    4, 
    24, 
    4,  
    1, 
    8, 
    12, 
    16, 
    32, 
    32, 
    64, 
    4, 
    16,
    8,
    8,
    8, 
    8,
    8,
    8,
    8, 
    8, 
    8, 
    8, 
    8, 
    16, 
    1,
    1
] as int[];

val PowerHammerRecipeNames1 = [
    "1raw_endorium", 
    "1copper_to_dust", 
    "1copper_ore_to_dust", 
    "1copper_raw_to_dust", 
    "1tin_to_dust", 
    "1tin_ore_to_dust", 
    "1tin_raw_to_dust", 
    "1iron_to_dust", 
    "1iron_ore_to_dust", 
    "1iron_raw_to_dust", 
    "1bronze_to_dust", 
    "1brass_to_dust", 
    "1gold_to_dust", 
    "1gold_ore_to_dust", 
    "1silver_to_dust", 
    "1silver_ore_to_dust", 
    "1silver_raw_to_dust", 
    "1gravitite_to_dust", 
    "1gravitite_ore_to_dust", 
    "1gravitite_raw_to_dust", 
    "1electrum_to_dust", 
    "1steel_to_dust", 
    "1viridium_to_dust", 
    "1viridium_ore_to_dust", 
    "1viridium_raw_to_dust", 
    "1mythril_to_dust", 
    "1mythril_ore_to_dust", 
    "1mythril_raw_to_dust", 
    "1sfs_to_dust", 
    "1endorium_to_dust", 
    "1ambrosium_to_dust", 
    "1ambrosium_ore_to_dust", 
    "1log_to_pulp", 
    "1kenaf_to_pulp",
    "1refractorylump_ruby", 
    "1refractorylump_sapphire",
    "1rune_to_vis"
] as string[];

val PowerHammerItemOutputs1 = [
    <endreborn:item_raw_endorium>, 
    <contenttweaker:material_part:20>, 
    <contenttweaker:material_part:20>, 
    <contenttweaker:material_part:20>, 
    <contenttweaker:material_part:21>, 
    <contenttweaker:material_part:21>, 
    <contenttweaker:material_part:21>, 
    <contenttweaker:material_part:28>, 
    <contenttweaker:material_part:28>, 
    <contenttweaker:material_part:28>, 
    <contenttweaker:material_part:37>, 
    <contenttweaker:material_part:48>,
    <contenttweaker:material_part:29>, 
    <contenttweaker:material_part:29>, 
    <contenttweaker:material_part:30>, 
    <contenttweaker:material_part:30>,
    <contenttweaker:material_part:30>,  
    <contenttweaker:material_part:43>, 
    <contenttweaker:material_part:43>, 
    <contenttweaker:material_part:43>, 
    <contenttweaker:material_part:27>, 
    <contenttweaker:material_part:23>, 
    <contenttweaker:material_part:23>, 
    <contenttweaker:material_part:23>, 
    <contenttweaker:material_part:22>, 
    <contenttweaker:material_part:22>, 
    <contenttweaker:material_part:22>, 
    <contenttweaker:material_part:25>, 
    <contenttweaker:material_part:26>, 
    <contenttweaker:material_part:44>, 
    <contenttweaker:material_part:44>, 
    <pyrotech:material:25>*6, 
    <pyrotech:material:25>*4, 
    <pyrotech:material:8>*4, 
    <pyrotech:material:8>*4,
    <contenttweaker:material_part:13>,
    <contenttweaker:vis_speck>
]  as IItemStack[];

val PowerHammerItemInputs1 = [
    <ore:enderpearl>,
    <ore:ingotCopper>, 
    <ore:oreCopper>, 
    <ore:rawOreCopper>, 
    <ore:ingotTin>, 
    <ore:oreTin>, 
    <ore:rawOreTin>,
    <ore:ingotIron>, 
    <ore:oreIron>, 
    <ore:rawOreIron>, 
    <ore:ingotBronze>, 
    <ore:ingotBrass>, 
    <ore:ingotGold>, 
    <ore:oreGold>, 
    <ore:ingotSilver>, 
    <ore:oreSilver>, 
    <ore:rawOreSilver>, 
    <ore:ingotGravitite>, 
    <ore:oreGravitite>, 
    <ore:rawOreGravitite>, 
    <ore:ingotCrucibleSteel>, 
    <ore:ingotViridium>, 
    <ore:oreViridium>, 
    <ore:rawOreViridium>, 
    <ore:ingotMythril>, 
    <ore:oreMythril>, 
    <ore:rawOreMythril>, 
    <ore:ingotSoulforgedSteel>, 
    <ore:ingotEndorium>, 
    <ore:gemAmbrosium>, 
    <ore:oreAmbrosium>, 
    <ore:barkWood>, 
    <ore:cropKenaf>, 
    <ore:gemRuby>, 
    <ore:gemSapphire>,
    <ore:ingotElectrum>,
    <ore:runeNoRainbow>
] as IOreDictEntry[];

val PowerHammerNumModifier1 = [
    16,
    8, 
    4, 
    4, 
    8, 
    4, 
    4,
    12, 
    8, 
    8, 
    16, 
    16, 
    8, 
    4, 
    8, 
    4, 
    4, 
    12, 
    8, 
    8, 
    32, 
    12, 
    8, 
    8, 
    48, 
    16, 
    16, 
    64, 
    12, 
    6, 
    4, 
    32, 
    8,
    64, 
    64,
    32,
    4
] as int[];

for i, input in PowerHammerItemInputs {
    newRP.start()
    .duration(PowerHammerNumModifier[i] * 20)
    .inputItems(PowerHammerItemInputs[i])
    .inputFluids(<fluid:blood> * ((PowerHammerNumModifier[i] * 5) as int))
    .outputItems(PowerHammerItemOutputs[i])
    .buildAndRegister();
}

for i, input in PowerHammerItemInputs1 {
    newRP.start()
    .duration(PowerHammerNumModifier1[i] * 20)
    .inputItems(PowerHammerItemInputs1[i])
    .inputFluids(<fluid:blood> * ((PowerHammerNumModifier[i] * 5) as int))
    .outputItems(PowerHammerItemOutputs1[i])
    .buildAndRegister();
}

for i in 0 to 16 {
    newRP.start()
    .duration(20)
    .inputItems(<minecraft:stained_glass>.definition.makeStack(i))
    .inputFluids(<fluid:blood> * 5)
    .outputItems(<quark:glass_shards>.definition.makeStack(i+1) * 4)
    .buildAndRegister();
}