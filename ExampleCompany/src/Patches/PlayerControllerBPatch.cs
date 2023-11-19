using GameNetcodeStuff;
using HarmonyLib;

namespace ExampleCompany.Patches;

[HarmonyPatch(typeof(PlayerControllerB))]
public class PlayerControllerBPatch
{
    [HarmonyPatch("Update")]
    [HarmonyPostfix]
    public static void InfiniteSprintPatch(ref float ___sprintMeter)
    {
        ___sprintMeter = 1f;
    }
}