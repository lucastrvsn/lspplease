# lspplease

please, install my language servers

## Getting started

To use this plugin to manage all your languages servers, you'll need to install
it using some plugin manager, like using `packer.nvim`:

```lua
use { 'lucastrvsn/lspplease' }
```

or using `vim-plug`:

```vim
Plug 'lucastrvsn/lspplease'
```

### Using it

After you have successfully installed this plugin, you can call the function
`:LspPleaseInstall` to install all of your languages servers. It will handle
everything for you without any configuration (and I don't want to support any
kind of configuration. Everything HAS to be working out of the box).

### Dependencies

- neovim 0.5
- nvim-lspconfig

You must be able to execute all the commands you need to install some language
server without sudo and globally.

If you need to install a language server written in `node.js`, you will need to
be able to execute the `npm` command without any problem.

Please, before attempting to install any of the language server, check if you
have the right dependencies of it. On every language server supported from the
list below, you can see what dependency it has.

## Status

I'm currently working on this plugin. So, right now, only the languages servers
with a check mark is currently supported. `Windows` is not supported because I
can't test using it. If you interested in add windows supported, please let me
know.

- ❌ als
- ❌ angularls
- ✅ bashls `(npm)`
- ❌ ccls
- ❌ clangd
- ❌ clojure_lsp
- ❌ cmake
- ❌ codeqlls
- ✅ cssls `(npm)`
- ❌ dartls
- ❌ denols
- ❌ dhall_lsp_server
- ❌ diagnosticls
- ❌ dockerls
- ❌ efm `(go)`
- ❌ elixirls
- ❌ elmls
- ❌ flow
- ❌ fortls
- ❌ fsautocomplete
- ❌ gdscript
- ❌ ghcide
- ❌ gopls
- ❌ graphql
- ❌ groovyls
- ❌ hie
- ❌ hls
- ❌ html
- ❌ intelephense
- ❌ jdtls
- ❌ jedi_language_server
- ❌ jsonls `(npm)`
- ❌ julials
- ❌ kotlin_language_server
- ❌ leanls
- ❌ metals
- ❌ nimls
- ❌ ocamlls
- ❌ ocamllsp
- ❌ omnisharp
- ❌ perlls
- ❌ purescriptls
- ❌ pyls
- ❌ pyls_ms
- ❌ pyright
- ❌ r_language_server
- ❌ racket_langserver
- ❌ rls
- ❌ rnix
- ❌ rome `(npm)`
- ❌ rust_analyzer
- ❌ scry
- ❌ solargraph
- ❌ sorbet
- ❌ sourcekit
- ❌ sqlls `(npm)`
- ❌ sqls
- ❌ sumneko_lua
- ❌ svelte `(npm)`
- ❌ terraformls
- ❌ texlab
- ✅ tsserver `(npm)`
- ❌ vimls `(npm)`
- ❌ vls
- ❌ vuels `(npm)`
- ❌ yamlls `(npm)`
- ❌ zls

## Notes to myself

- [ ] (!) Be sure that all language servers installs correctly.
- [ ] (!) Implement some way to install the language servers without the need of the global install and scope everything inside of this plugin folder to avoid messing with the user's global install.
- [ ] (!) Add tests.
- [ ] (?) Lock version from language servers that has been tested.
