
module StatPlots

using Reexport
import RecipesBase: recipetype
@reexport using Plots
import Plots: _cycle
using Plots.PlotMeasures
using StatsBase
using Distributions
import IterableTables
import DataValues: DataValue
import TableTraits: getiterator, isiterabletable
import TableTraitsUtils: create_columns_from_iterabletable
using Widgets, Observables
import Widgets: @nodeps
import DataStructures: OrderedDict
import NamedTuples
import Clustering: Hclust

import KernelDensity
@recipe f(k::KernelDensity.UnivariateKDE) = k.x, k.density
@recipe f(k::KernelDensity.BivariateKDE) = k.x, k.y, k.density.'

@shorthands cdensity

export @df

include("df.jl")
include("interact.jl")
include("corrplot.jl")
include("cornerplot.jl")
include("distributions.jl")
include("boxplot.jl")
include("violin.jl")
include("hist.jl")
include("marginalhist.jl")
include("bar.jl")
include("dendrogram.jl")



end # module
