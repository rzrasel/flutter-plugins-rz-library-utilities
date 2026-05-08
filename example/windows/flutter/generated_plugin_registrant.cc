//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <rz_library_utilities/rz_library_utilities_plugin_c_api.h>
#include <rz_theme_set_1/rz_theme_set_1_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  RzLibraryUtilitiesPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzLibraryUtilitiesPluginCApi"));
  RzThemeSet_1PluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzThemeSet_1PluginCApi"));
}
