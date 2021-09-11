$Input = Read-Host

if(($input -cmatch '[a-z]') -and ($input -cmatch '[A-Z]') -and ($input -match '\d') -and ($input.length -ge 10))
{
    Write-Output "$input is valid password"
}
else
{
    Write-Output "$input is Invalid password"
}