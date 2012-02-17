YAML2JSON := perl -MYAML::XS -MJSON::XS \
        -e 'print encode_json YAML::XS::LoadFile(shift)'

default: apps.jsonp

apps.jsonp: apps.yaml
	echo "\$$Console.set_app_store_data(" > $@
	$(YAML2JSON) $< >> $@
	echo ');' >> $@
