project "gtest"
	location "googletest"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"googletest/src/**.cc",
		"googletest/src/**.h",
		"googletest/include/**.h"
	}
	includedirs
	{
		"googletest",
		"googletest/include"
	}	

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

	filter "configurations:Debug"
		symbols "On"
	
	filter "configurations:Release"
		optimize "On"