webtalk_init -webtalk_dir F:/Vivadoprojects/LC3_test_again/LC3_test_again.hw/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Sat Jan 23 22:04:41 2021" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "Vivado v2016.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "1577090" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "WIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "labtool" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "e192127c-0c85-4572-aae4-9b0b66a70070" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "addf8b08-60b4-4786-a32a-7a6fdadf8dcf" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "2" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Microsoft Windows 8 or later , 64-bit" -context "user_environment"
webtalk_add_data -client project -key os_release -value "major release  (build 9200)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i5-7600K CPU @ 3.80GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3792 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "17.000 GB" -context "user_environment"
webtalk_register_client -client labtool
webtalk_add_data -client labtool -key pgmcnt -value "00:00:00" -context "labtool\\usage"
webtalk_add_data -client labtool -key cable -value "" -context "labtool\\usage"
webtalk_transmit -clientid 1845483721 -regid "" -xml F:/Vivadoprojects/LC3_test_again/LC3_test_again.hw/webtalk/usage_statistics_ext_labtool.xml -html F:/Vivadoprojects/LC3_test_again/LC3_test_again.hw/webtalk/usage_statistics_ext_labtool.html -wdm F:/Vivadoprojects/LC3_test_again/LC3_test_again.hw/webtalk/usage_statistics_ext_labtool.wdm -intro "<H3>LABTOOL Usage Report</H3><BR>"
webtalk_terminate
