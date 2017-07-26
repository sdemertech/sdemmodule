class sdemmodule::variables (
  # required
  $variable1,
  # not required
  $variable2 = '',
  $variable3 = ''
)
{

  # demonstarting how to pass a parameter
  notify {"********** Executing class named variables. Parameter passed is \"$variable1\", possible \"$variable2\".": }

}
