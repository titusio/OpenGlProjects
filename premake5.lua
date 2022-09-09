workspace "OpenGlProjects"
    location "generated"
    language "C++"
    architecture "x64"
    configurations {"Debug", "Release"}

    filter {"configurations:Debug"}
        symbols "On"
    filter {"configurations:Release"}
        optimize "On"
    filter { }

    targetdir ("Build/Bin/%{prj.name}/%{cfg.longname}")
	    objdir ("Build/Obj/%{prj.name}/%{cfg.longname}")

    project "instancing"
        kind "ConsoleApp"
        files "projects/instancing/**"

        -- include libraries
        includedirs "lib/GLFW/include"
        includedirs "lib/glad/include"

        -- link libraries
        libdirs "lib/GLFW/lib"
        filter "kind:not StaticLib"
        links "glfw3"

        filter{}