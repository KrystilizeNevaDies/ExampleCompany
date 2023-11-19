using HarmonyLib;

namespace ExampleCompany.Patches;

public class ExampleCompanyPatcher
{
    private readonly Harmony _harmony;
    
    public ExampleCompanyPatcher(Harmony harmony)
    {
        _harmony = harmony;
    }
    
    public void Patch()
    {
        _harmony.PatchAll(typeof(PlayerControllerBPatch));
    }
}