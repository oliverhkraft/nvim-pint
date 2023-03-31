# neovim-pint
Run Laravel Pint when saving PHP files

```
{
  'oliverhkraft/nvim-pint',
  config = function()
    require('nvim-pint').setup {
      silent = true,
      exclude_folders = {'resources/views'}
    }
  end
}
```
