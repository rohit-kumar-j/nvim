import cadquery as cq
from cadquery.vis import show

d = 10  # box is visible as expected
# d = 100  # empty window displayed; after 'r' key or zoom with middle mouse the box is displayed

result = cq.Workplane().box(d, d, d)
# print(renderWindow.GetScreenSize())

show(result)
