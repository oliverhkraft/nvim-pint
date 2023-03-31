# neovim-pint
Run Laravel Pint when saving PHP files

```
{
  'oliverhkraft/neovim-pint',
  config = function()
    require('neovim-pint').setup {
      silent = true,
      exclude_folders = {'resources/views'}
    }
  end
}
```
