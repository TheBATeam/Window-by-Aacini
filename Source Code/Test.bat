@Echo off
cls

Title Window - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a

Echo Current Window Title...
timeout /t 5
Window
Echo.
timeout /t 3
Cls
Echo Changing window Size...
timeout /t 5
Window Size 1 1
For /l %%X in (0,1,80) do (
	Window Size %%X 1
)
For /l %%X in (0,1,30) do (
	Window Size 80 %%X
)
Echo. 
timeout /t 3
Cls
Echo Minimizing Window...
timeout /t 5
Window Gsize Min
Echo.
timeout /t 3
Cls
Echo Maximizing Window...
timeout /t 5
Window Gsize Max
Echo.
timeout /t 3
Cls
Echo Hiding Window...
timeout /t 5
Window Gsize Hide
Echo.
timeout /t 3
Cls
Echo Showing back Window...
timeout /t 5
Window Gsize Show
Echo.
timeout /t 3
Cls
Echo Changing Windows Position...
timeout /t 5
For /l %%Y in (0,20,300) do (
	For /l %%X in (0,20,600) do (
		Window Gpos %%X %%Y
	)
)
Echo.
pause
exit