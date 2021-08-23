//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <desktop_window/desktop_window_plugin.h>
#include <file_chooser/file_chooser_plugin.h>
#include <maps_launcher/maps_launcher_plugin.h>
#include <url_launcher_windows/url_launcher_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  DesktopWindowPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DesktopWindowPlugin"));
  FileChooserPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FileChooserPlugin"));
  MapsLauncherPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("MapsLauncherPlugin"));
  UrlLauncherPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherPlugin"));
}
