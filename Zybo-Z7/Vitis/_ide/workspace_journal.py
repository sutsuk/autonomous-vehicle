# 2025-11-01T18:01:10.121983900
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../system.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="application",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="application")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/..", files=["main.c"], dest_dir_in_cmp = "src")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="application")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()

