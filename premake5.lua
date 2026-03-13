project "bc7enc_rdo"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "bc7enc.cpp",
        "bc7decomp.cpp",
        "rgbcx.cpp",
        "bc6h_enc.cpp",
        "ert.cpp",
    }

    includedirs { "." }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"