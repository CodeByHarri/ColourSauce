<!-- README.md is generated from README.Rmd. Please edit that file -->

ColourSauce: Colours From The Sauce
===================================

*You buy you some orange juice, how long’s that going to last in your
fridge? Couple days, maybe? That’s the juice. How long does BBQ sauce
last in your fridge? A while. That’s the sauce, man. It sticks around.
It’s thick, hard to move.*

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
#>  [9] "CoolBlueCopper" "CoolShadowRose" "TheSimpsons"    "Spiderman"     
#> [13] "Spongebob"      "TheOffice"      "Gunshow"
```

Palettes
--------

A show case of the palettes by category of inspiration.

> *Memes & Movies*

#### Spiderman (1967)

<p align="center">
<img src="figure/spiderman.gif" id="id" class="class" style="width:150.0%;height:100.0%" />
</p>

``` r
coloursauce("Spiderman")
```

![](figure/memes1-1.png)

#### Spongebob (1999)

<p align="center">
<img src="figure/spongebob.gif" id="id" class="class" style="width:100.0%;height:100.0%" />
</p>

``` r
coloursauce("Spongebob")
```

![](figure/memes2-1.png)

#### The Office (2005)

<p align="center">
<img src="figure/theoffice.jpg" id="id" class="class" style="width:100.0%;height:100.0%" />
</p>

``` r
coloursauce("TheOffice")
```

![](figure/memes3-1.png)

#### Gunshow (2013)

<p align="center">
<img src="figure/gunshow.gif" id="id" class="class" style="width:100.0%;height:100.0%" />
</p>

``` r
coloursauce("Gunshow")
```

![](figure/memes4-1.png)

#### The Simpsons (1994)

<p align="center">
<img src="figure/bart.gif" id="id" class="class" style="width:150.0%;height:100.0%" />
</p>

``` r
coloursauce("TheSimpsons")
```

![](figure/memes5-1.png)

My top 10 favourites from
[coolors.co](https://coolors.co/palettes/popular)

### coolors.co

``` r
coloursauce("CoolRdBu")
```

![](figure/coolors-1.png)

``` r
coloursauce("CoolHeat")
```

![](figure/coolors-2.png)

``` r
coloursauce("CoolContrast1")
```

![](figure/coolors-3.png)

``` r
coloursauce("CoolContrast2")
```

![](figure/coolors-4.png)

``` r
coloursauce("CoolCocoa")
```

![](figure/coolors-5.png)

``` r
coloursauce("CoolGnRd")
```

![](figure/coolors-6.png)

``` r
coloursauce("CoolDarkLava")
```

![](figure/coolors-7.png)

``` r
coloursauce("CoolSageBrown")
```

![](figure/coolors-8.png)

``` r
coloursauce("CoolBlueCopper")
```

![](figure/coolors-9.png)

``` r
coloursauce("CoolShadowRose")
```

![](figure/coolors-10.png)

Discrete Example
================

``` r
library("ggplot2")
ggplot(mtcars, aes(factor(cyl), fill=factor(vs))) +  geom_bar() +
  scale_fill_manual(values = coloursauce("CoolDarkLava"))
```

![](figure/ggplot1-1.png)

Continuous Example
==================

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

### Error and bug fixes

> remove.packages(“ColourSauce”, lib=“\~/R/win-library/4.0”)

> detach(“package:ColourSauce”, unload = TRUE)

> devtools::install\_github(“CodeByHarri/ColourSauce”)
