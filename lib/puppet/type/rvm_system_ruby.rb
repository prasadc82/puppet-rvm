Puppet::Type.newtype(:rvm_system_ruby) do
  @doc = "Manage RVM Ruby installations."

  ensurable

  newparam(:name) do
    desc "The name of the Ruby to be managed."
    isnamevar
  end

  newparam(:build_opts) do
    desc "Build flags for RVM (e.g.: ['--movable', '--with-libyaml-dir=...', ...])"
    defaultto ""
  end

  newproperty(:default_use) do
    desc "Should this Ruby be the system default for new terminals?"
    defaultto false
  end

  newproperty(:autolib_mode) do
    desc "Set RVM autolib mode"
  end

end
