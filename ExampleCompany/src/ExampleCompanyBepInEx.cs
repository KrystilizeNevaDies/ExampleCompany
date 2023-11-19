using BepInEx;
using HarmonyLib;

namespace ExampleCompany;

[BepInPlugin(ModGuid, ModName, ModVersion)]
public class ExampleCompanyBepInEx : BaseUnityPlugin
{
    private const string ModGuid = "org.krystilize.ExampleCompany";
    private const string ModName = "ExampleCompany";
    private const string ModVersion = "1.0.0";

    private readonly Harmony _harmony = new(ModGuid);
        
    private void Awake()
    {
        Logger.LogInfo("ExampleCompany is loading...");
        ExampleCompany.Initialize(_harmony);
        Logger.LogInfo("ExampleCompany has loaded!");
    }
}