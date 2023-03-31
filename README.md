# Nvim Pint 🍺
Run Laravel Pint when saving PHP files. Checks if Pint is present in *./vendor/bin/pint* before executing. 



### Include with Lazy 
```lua
{
  'oliverhkraft/nvim-pint',
  config = function()
    require('nvim-pint').setup {
      silent = true, -- No notifications
      exclude_folders = {'resources/views'} -- Accepts comma separated array to exlude folders
    }
  end
}
```
