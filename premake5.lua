project "ImGui"
    kind "StaticLib"
    language "C++"
	cppdialect "C++17"
    staticruntime "on"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }

	defines
	{
	    "_CRT_SECURE_NO_WARNINGS"
	}
    
	filter "system:windows"
        systemversion "latest"

	filter "configurations:Debug"
		symbols "on"

	filter "configurations:Release"
		optimize "on"

	filter "configurations:Dist"
		optimize "on"

