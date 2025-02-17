import dotenv_gleam
import envoy
import gleam/io

pub fn main() {
  dotenv_gleam.config_with(".env")

  let assert Ok(sample) = envoy.get("TEST")
  let assert Ok(bar) = envoy.get("BAR")
  io.debug(sample)
  io.debug(bar)
}
