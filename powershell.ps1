$input = $args[0]

if(($input -cmatch '[a-z]') -and ($input -cmatch '[A-Z]') -and ($input -match '\d') -and ($input.length -ge 10))
{
    Write-Output "valid password"
}
else
{
    Write-Output "Invalid password"
}