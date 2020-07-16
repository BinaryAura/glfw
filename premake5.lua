project "spdlog"
    kind "StaticLib"
    language "C"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("build/" .. outputdir .. "/%{prj.name}")

    files {
        "src/**.cpp",
        "include/**.h"
    }

    filter "system:linux"
        systemversion "latest"
        staticruntime "On"

        defines "SPDLOG_COMPILED_LIB"