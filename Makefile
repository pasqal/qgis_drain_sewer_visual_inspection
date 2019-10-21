LOCALES = fr
PLUGINNAME = drain_sewer_visual_inspection

help:
	$(MAKE) -C qgis_plugin_tools help

docker_test:
	$(MAKE) -C qgis_plugin_tools docker_test PLUGINNAME=$(PLUGINNAME)

i18n_%:
	$(MAKE) -C qgis_plugin_tools i18n_$* LOCALES=$(LOCALES)

release_%:
	$(MAKE) -C qgis_plugin_tools release_$* PLUGINNAME=$(PLUGINNAME)