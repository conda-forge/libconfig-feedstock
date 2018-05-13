if /I "%vc%"=="14" (
    msbuild lib\libconfig.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x64
    msbuild lib\libconfig++.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x64
    msbuild tests\tests.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x64
) ELSE (
    msbuild lib\libconfig.vcproj /t:Rebuild /p:Configuration=Release /p:Platform=x64
    msbuild lib\libconfig++.vcproj /t:Rebuild /p:Configuration=Release /p:Platform=x64
    msbuild tests\tests.vcproj /t:Rebuild /p:Configuration=Release /p:Platform=x64
)
