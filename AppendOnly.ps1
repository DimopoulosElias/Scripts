   Write-Host $args[0]
   $f = New-Object -TypeName 'IO.FileStream' `
                   -ArgumentList $args[1],`
                                 ([IO.FileMode]::Append),`
                                 ([Security.AccessControl.FileSystemRights]::AppendData),`
                                 ([IO.FileShare]::Read),`
                                 4KB,`
                                 ([IO.FileOptions]::None)
   $f = New-Object -TypeName 'IO.StreamWriter' `
                   -ArgumentList $f
   $f.WriteLine($args[0])
   $f.Dispose()
