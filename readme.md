# GIS Tools

## New Workspace Scripts

Use the `new_workspace.bat` script to create a workspace directory structure in Windows environments.
```bat
new_workspace.bat workspace_name
```

Use the `new_workspace.sh` script to create a workspace directory structure in Unix like environments.
```bash
chmod +x new_workspace.sh
./new_workspace.sh workspace_name
```

## Ruby Gem

### Development

To make the executable actually executable
```bash
chmod +x bin/gis-tools
```

run commands with `bundle exec bin/gis-tools [command]`
```bash
# Execute an unpublished command
bundle exec bin/gis-tools [command]
```

### tagging cli versions
If a new build should have a new version, update the version in the `version.rb` file, commit the changes.  
Tag the new version and push. 
```bash
git tag # list tags
git tag -a vx.x.x -m "CLI Version x.x.x" # create a tag
git push origin vx.x.x # push a specific tag
```
