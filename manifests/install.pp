# Install Patroni packages
class patroni::install {
  assert_private()

  package { $patroni::packagename:
    ensure => $patroni::ensure_package,
  }
}
