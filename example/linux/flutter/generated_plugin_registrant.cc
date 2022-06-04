//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <configurable_expansion_tile/configurable_expansion_tile_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) configurable_expansion_tile_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ConfigurableExpansionTilePlugin");
  configurable_expansion_tile_plugin_register_with_registrar(configurable_expansion_tile_registrar);
}
