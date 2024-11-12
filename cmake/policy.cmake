#[[[
  policy_new

  Sets a new policy and updates the default policy setting.

  .. code-block:: cmake

    policy_new(<policy> <type>)

  ``policy``
    Name of the policy to set.
  ``type``
    Type of the policy (e.g. OLD, NEW).

  This function sets a new policy and updates the default policy setting.
  If the policy is already set, it will be updated to the new type.
]]
function(policy_new p tp)
        if (POLICY ${p})
            cmake_policy(SET ${p} ${tp})
            set(CMAKE_POLICY_DEFAULT_${p} ${tp})
        endif ()
    endfunction(policy_new)
