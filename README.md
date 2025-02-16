# CrispyVim 🌿✨

A delightfully Lispy Neovim configuration built with [hotpot.nvim](https://github.com/rktjmp/hotpot.nvim) for compilation and [lazy.nvim](https://github.com/folke/lazy.nvim) for keeping things snappy. By bringing Lisp's elegance to Neovim, we get to have our soup and eat it too - all the expressiveness of Elisp with none of the carpal tunnel! This setup truly makes Neovim strictly superior to Emacs. 🚀

## Technical Foundation 🔧

### Implementation Details 💫

- **Language**: Fennel all the way down (except for a tiny bit of Lua for bootstrapping, but that doesn't count) 📝
- **Compilation**: hotpot.nvim turns our Fennel soup into a performance feast ⚡
- **Plugin Management**: So lazy it starts up before you finish pressing Enter 🚄
- **Keyboard Layout**: Colemak-DH or bust! QWERTY fingers will be very confused ⌨️
- **Themes**: Nord and Gruvbox to match your vibe - arctic cool or cozy warmth ❄️ / 🔥

### Main Workflows 🌟

- REPL-driven development (because who doesn't love immediate feedback?) 💻
- Academic writing with LaTeX (because Markdown just isn't complex enough) 📚
- Note-taking with Obsidian (because knowledge should be interlinked) 📝

### Structure 🏗️

Our Fennel files, neatly organized (every parenthesis accounted for):

```
fnl/
├── keymaps.fnl          # Where Colemak-DH meets Lisp 🎮
├── lazy-plugins.fnl     # The "I'll load it later" department 🔌
├── options.fnl          # Neovim's personality adjustments ⚙️
└── plugins/            # Where the plugin magic happens 🧩
    └── ...
```

## Further Reading 📖
Take a look at the [CHEATSHEET.md](CHEATSHEET.md)

1. If you're a fellow Colemak-DH enjoyer (❤️), it's a goldmine of ergonomic keybinding ideas. Whether you're building your own config or just curious, it shows how to craft a Neoim setup that feels natural on our superior keyboard layout. If you're using QWERTY... well, let's just say these keybindings might feel like trying to pat your head while rubbing your belly during a handstand.
2. Should you decide to try out this config for yourself, having the cheatsheet open in another window isn't just helpful – it's essential for survival. Trust me on this one.

## License 📜

This project is released under the BSD Zero-Clause License (though the concept of needing a license to share knowledge is about as logical as needing a permit to breathe). Because claiming ownership over code is like trying to own the alphabet. Patents and copyrights are just imaginary property rights dreamed up by bureaucrats who think they can fence in human creativity. The government's permission slip collection can't stop the free flow of ideas. Innovation doesn't come from monopoly rights and artificial scarcity – it comes from sharing, remixing, and building upon each other's work. So this code is free as in freedom, free as in beer, and free from the dead hand of state control that pretends ideas can be owned and contained. Check the LICENSE.txt if you need the legal bits, but the TL;DR is: do whatever you want and don't you dare sue me for it.

## Note ℹ️

This is my personal configuration, crafted with love. While you're welcome to use any part of it, be warned: it's as personal as a toothbrush and twice as opinionated. 🌟

---

*Remember: Friends don't let friends use Emacs when they could be using Fennel in Neovim instead.*
