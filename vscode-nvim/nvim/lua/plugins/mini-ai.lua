return {
  "nvim-mini/mini.ai",
  version = "*",
  config = function()
    local mini_ai = require('mini.ai')
    local spec_pair = mini_ai.gen_spec.pair

    mini_ai.setup({
      custom_textobjects = {
        r = spec_pair('[', ']', { type = 'balanced' }),
        ['*'] = spec_pair('*', '*', { type = 'greedy' }),
        ['_'] = spec_pair('_', '_', { type = 'greedy' }),
      }
    })
  end
}
