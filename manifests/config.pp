# Configure Patroni service
class patroni::config {
  assert_private()

  file { $patroni::config_path:
    ensure  => present,
    owner   => $patroni::config_owner,
    group   => $patroni::config_group,
    mode    => $patroni::config_mode,
    content => template('patroni/postgresql.yml.erb'),
  }
}
