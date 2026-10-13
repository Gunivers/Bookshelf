# 🏗️ Generation

## Unreleased

- ⚠️ Inputs and outputs were completely reworked to follow new conventions
- ⚠️ `#bs.generation:on_cuboid` and `#bs.generation:on_rectangle` have variants, such as `#bs.generation:on_cuboid/yzx` and `#bs.generation:on_rectangle/zy`: the `direction` argument is gone
- ⚠️ `width`, `height` and `depth` are replaced by `size`, a list in the order of the function name
- ⚠️ `spacing` is removed: positions are next to each other. A negative number in `size` goes the other way on its axis
- ⚠️ `limit` is renamed to `batch`
- ⚠️ The indexes of a position are the `bs.generation:i`, `bs.generation:j` and `bs.generation:k` integer providers, instead of scores
- ✨ A command can start another generation without breaking the one that runs it: it starts at the next tick
- ✨ Added `#bs.generation:on_cuboid_outline/*` and `#bs.generation:on_rectangle_outline/*` to run a command only on the outside of a cuboid, or on the edge of a rectangle
- ✨ Added `#bs.generation:on_ellipsoid/*` and `#bs.generation:on_ellipse/*` to run a command inside an ellipsoid or an ellipse, such as a sphere or a disc
- ✨ Added `#bs.generation:on_ellipsoid_outline/*` and `#bs.generation:on_ellipse_outline/*` to run a command only on the outside of an ellipsoid, or on the edge of an ellipse, such as a hollow sphere or a ring
- ⚡ Positions run in blocks of up to 8, and a line that fits in the batch is counted once instead of position by position

## `v4.0.0`

- ⚠️ Reworked the whole module: `gen_shape_2d`, `gen_fractal_shape_2d` and `gen_simplex_shape_2d` are replaced by a generic iteration system ([#509](https://github.com/mcbookshelf/bookshelf/issues/509))
- ✨ Added `#bs.generation:on_cuboid` to iterate over a 3D region with a configurable direction, spacing and tick limit ([#509](https://github.com/mcbookshelf/bookshelf/issues/509))
- ✨ Added `#bs.generation:on_rectangle` to iterate over a 2D region with a configurable direction, spacing and tick limit ([#509](https://github.com/mcbookshelf/bookshelf/issues/509))
- ✨ Added the `set_block`, `set_block_type`, `set_random_block`, `fractal_noise_2d` and `simplex_noise_2d` callbacks ([#509](https://github.com/mcbookshelf/bookshelf/issues/509))
- 🐛 The iteration direction can be set, to account for mask offsets when blocks are updated during the iteration ([#435](https://github.com/mcbookshelf/bookshelf/issues/435))

## `v3.0.0`

- ⚠️ Renamed the `bs.generate` module to `bs.generation` ([#296](https://github.com/mcbookshelf/bookshelf/issues/296))
- ⚠️ Renamed the scores used in callbacks to use the new `bs.lambda` objective ([#282](https://github.com/mcbookshelf/bookshelf/issues/282))
- ⚠️ Renamed `bs.generate:shape_2d` to `bs.generation:gen_shape_2d` ([#296](https://github.com/mcbookshelf/bookshelf/issues/296))
- ⚠️ Renamed `bs.generate:fractal_shape_2d` to `bs.generation:gen_fractal_shape_2d` ([#296](https://github.com/mcbookshelf/bookshelf/issues/296))
- ⚠️ Renamed `bs.generate:simplex_shape_2d` to `bs.generation:gen_simplex_shape_2d` ([#296](https://github.com/mcbookshelf/bookshelf/issues/296))

## `v2.2.0`

- 🎉 Added the module, with 2D algorithms for texture and heightmap-based generation ([#6](https://github.com/mcbookshelf/bookshelf/issues/6))
