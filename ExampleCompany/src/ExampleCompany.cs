using System;
using BepInEx;
using HarmonyLib;
using ExampleCompany.Patches;

namespace ExampleCompany;

public abstract class ExampleCompany
{
    internal static void Initialize(Harmony harmony)
    {
        ExampleCompanyPatcher patcher = new(harmony);

        try
        {
            patcher.Patch();
        }
        catch (Exception e)
        {
            Console.WriteLine("Failed to apply harmony patches for ExampleCompany: {0}", e);
            throw;
        }
    }
}