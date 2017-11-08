<<include colors_fonts_patterns.conf>>

<<include ideogram.conf>>
<<include ticks.conf>>

<image>
file* =  Healthy.png
<<include etc/image.conf>>
</image>



karyotype   = data/karyotype/karyotype.human.txt
chromosomes_units           = 10000000
chromosomes_display_default = yes




<plot>
type      = histogram
file      = data/CircosExpE-10/ExpressionLogHealthy.txt
r1        = 0.8r
r0        = 0.7r
stroke_type = outline
thickness   = 1
color       = l1
extend_bin  = no

<backgrounds>
<background>
color = vvlgrey
</background>
</backgrounds>
</plot>




<colors>
overexpress = 50,50,170
l1 = 170,50,50
l2 = 170,170,130
l3 = 130,170,170
</colors>




<links>

<link>
file          = data/RedesCircos/RedHealthy.txt
radius        = 0.7r
color         = orange
bezier_radius = 0.3r
thickness     = 0.5
<rules>
<rule>
condition	  = var(intrachr)
show		  = yes
color         = blue
</rule>
</rules>
</link>
</links>


<<include etc/housekeeping.conf>>