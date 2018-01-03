	project "test"
		kind "ConsoleApp"
		language "C++"

		files {
			"./src/**.hpp",
			"./src/**.cpp",
		}

		postbuildcommands {
			"mkdir \"%{wks.location}runtime\"",
			"copy /y \"$(TargetPath)\" \"%{wks.location}runtime\"",
		}

		pchheader "std_include.hpp"
		pchsource "src/std_include.cpp"