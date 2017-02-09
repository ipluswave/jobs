define laser ranger
(
  sensor
  (
    range_max 15
    fov 270
    samples 810
  )
  # generic model properties
  color "black"
  size [ 0.06 0.15 0.03 ]
)

#
# Robot model:
# footprint (counter-clockwise): [-0.1,-0.125], [0.5,-0.125], [0.5,0.125], [-0.1,0.125]

define testing_robot position
(
  pose [ 0.0 0.0 0.0 0.0 ]

  size [ 0.6 0.25 0.40 ] # this models the footprint (rectangular)
  origin [ 0.2 0.0 0.0 0.0]
  gui_nose 1
  color "green"

  # kinematics
  drive "diff"

  # spawn sensors
  laser(pose [ 0.5 0.125 -0.11 45 ])
  laser(pose [ -0.1 -0.125 -0.15 225 ])
)

define block model
(
  pose [ 0.0 0.0 0.0 0.0 ]

  size [ 0.2 0.2 1 ]
  origin [ 0.0 0.0 0.0 0.0 ]
  gui_nose 0
  color "blue"
)
