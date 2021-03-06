# Economic Indicators

This package provides GDP, CPI and Unemployment Rate time series plot
(from 1983 to 2018) of 12 European countries (Austria, Belgium, Denmark,
France, Germany, Ireland, Italy, Netherlands, Portugal, Spain, Sweden,
and United Kingdom).

## Installation
```{r}
#first install the R package "devtools" if not installed
 devtools::install_github('unimi-dse/1a1ea81f')
```

## Dataset

The package provides three datasets: they contain, respectively, Unemployment Rate, GDP and CPI time ordered observations (from 1983 to 2018) of the previously listed European countries.

```{r}
# first dataset documentation
?EconomicIndicators::UNEMPLOYMENT_RATE

# second dataset documentation
?EconomicIndicators::GDP

# third dataset documentation
?EconomicIndicators::CPI
```

## Usage

```{r}
# load the package
require(EconomicIndicators)
```

## Shiny App

The function EconomicIndicatorsGUI() runs a Graphical User Interface to plot the time
series of the economic indicators.
```{r}
EconomicIndicatorsGUI()
```

