Function KillThatProcess( [string] $name )
{

$procs = Get-Process $name
	
	$count = (ps $name).count

	$prompt = Read-Host  -prompt "There are $count processes with the name $name, proceed? Y/N”


     if($prompt -eq "Y" -or $prompt -eq "y")
	{
             $procs | kill 
         } 
              
    else {
             write-host  -ForegroundColor Yellow -BackgroundColor Black  "YOU ARE A CLOWN!"
             write-host  -ForegroundColor green -BackgroundColor Black "I LITERALLY SAID PRESS Y TO STOP THE VIRUS! BUT NO YOU DECIDED TO PRESS ANY OTHER LETTER BUT Y!"
             write-host  -ForegroundColor Red -BackgroundColor Black "SO ENJOY YOUR VIRUS"
             
        
          }
}



Function Bamboozle ($path = "./*")
{

$letter = -join ((65..90) | Get-Random -Count 1  | % {[char]$_}) 

write-host -ForegroundColor Green -BackgroundColor Black "Hey Boomer! You tried to attack me with 420 notepads, well guess what, uno reverse." 
write-host -ForegroundColor Red -BackgroundColor Black " Well here is your magic letter $letter, enjoy the virus"

gci -Path $path -File  *$letter* | Remove-Item -WhatIf

}

