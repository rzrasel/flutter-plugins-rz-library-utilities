//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <rz_library_utilities/rz_library_utilities_plugin.h>
#include <rz_theme_set_1/rz_theme_set_1_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) rz_library_utilities_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "RzLibraryUtilitiesPlugin");
  rz_library_utilities_plugin_register_with_registrar(rz_library_utilities_registrar);
  g_autoptr(FlPluginRegistrar) rz_theme_set_1_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "RzThemeSet_1Plugin");
  rz_theme_set_1_plugin_register_with_registrar(rz_theme_set_1_registrar);
}
