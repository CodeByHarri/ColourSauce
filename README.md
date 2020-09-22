<!-- README.md is generated from README.Rmd. Please edit that file -->

ColourSauce: Colours From The Sauce
===================================

*You buy you some orange, how long’s that going to last in your fridge?
Couple days, maybe? That’s the juice. How long does BBQ sauce last in
your fridge? A while. That’s the sauce, man. It sticks around. It’s
thick, hard to move.*

<p align="center">
<img src="figure/kermit.gif" id="id" class="class" style="width:150.0%;height:100.0%" />
</p>

> Does picking the right colours stress you? No worries mate, I got you!

These are are some hand picked colour palettes I’ve chosen to spice them
boring plots to something everyone can get around! This package was
inspired by the [WesAnderson
package](https://github.com/karthik/wesanderson) which derived it’s
colour palette from the amazing Tumblr blog [Wes Anderson
Palettes.](http://wesandersonpalettes.tumblr.com/)

Installation
------------

``` r
devtools::install_github("CodeByHarri/ColourSauce")
```

Usage
-----

``` r
library("ColourSauce")

# See all palettes
names(saucecolours)
#>  [1] "CoolRdBu"       "CoolHeat"       "CoolContrast1"  "CoolContrast2" 
#>  [5] "CoolCocoa"      "CoolGnRd"       "CoolDarkLava"   "CoolSageBrown" 
#>  [9] "CoolBlueCopper" "CoolShadowRose"
```

Palettes
--------

A show case of the palettes by category of inspiration

-   My top 10 favourites from
    [coolors.co](https://coolors.co/palettes/popular)

### coolors.co

``` r
coloursauce("CoolRdBu")
```

![](figure/bottlerocket1-1.png)

``` r
coloursauce("CoolHeat")
```

![](figure/bottlerocket1-2.png)

``` r
coloursauce("CoolContrast1")
```

![](figure/bottlerocket1-3.png)

``` r
coloursauce("CoolContrast2")
```

![](figure/bottlerocket1-4.png)

``` r
coloursauce("CoolCocoa")
```

![](figure/bottlerocket1-5.png)

``` r
coloursauce("CoolGnRd")
```

![](figure/bottlerocket1-6.png)

``` r
coloursauce("CoolDarkLava")
```

![](figure/bottlerocket1-7.png)

``` r
coloursauce("CoolSageBrown")
```

![](figure/bottlerocket1-8.png)

``` r
coloursauce("CoolBlueCopper")
```

![](figure/bottlerocket1-9.png)

``` r
coloursauce("CoolShadowRose")
```

![](figure/bottlerocket1-10.png)

``` r
library("ggplot2")
ggplot(mtcars, aes(factor(cyl), fill=factor(vs))) +  geom_bar() +
  scale_fill_manual(values = coloursauce("CoolDarkLava"))
```

![](figure/ggplot1-1.png)

``` r
pal <- coloursauce("CoolHeat", 21, type = "continuous")
image(volcano, col = pal)
```

![](figure/volcano-1.png)

``` r
pal <- coloursauce("CoolHeat", 100, type = "continuous")
# heatmap is a local dataset
ggplot(heatmap, aes(x = X2, y = X1, fill = value)) +
  geom_tile() + 
  scale_fill_gradientn(colours = pal) + 
  scale_x_discrete(expand = c(0, 0)) +
  scale_y_discrete(expand = c(0, 0)) + 
  coord_equal() 
```

![](figure/zissou_heatmap-1.png)
