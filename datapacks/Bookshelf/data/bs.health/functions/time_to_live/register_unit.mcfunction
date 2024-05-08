$execute store success score #success bs.data run function bs.health:time_to_live/normalize_unit with storage bs:const health.units[{name:'$(unit)'}]
execute if score #success bs.data matches 0 run function #bs.log:error { \
  namespace:"bs.health", \
  tag:"time_to_live", \
  message:'"The unit provided is not supported."', \
  path:"bs.health:time_to_live/register_unit", \
}
