--search table name by given column name.

VCDB=# select table_name, column_name from information_schema.columns where column_name like '%port%';


          table_name           |          column_name
-------------------------------+-------------------------------
 pg_stat_activity              | client_port
 pg_stat_replication           | client_port
 sql_features                  | is_supported
 sql_packages                  | is_supported
 sql_parts                     | is_supported
 sql_sizing                    | supported_value
 vpx_vm                        | guest_state_change_supported
 vpx_wwn                       | port_wwn
 vpx_dvs                       | num_port
 vpx_dvs                       | num_standalone_port
 vpx_dvs                       | max_port
 vpx_dvs                       | capab_dvportgroup_operation
 vpx_dvs                       | capab_dvport_operation
 vpx_dvs                       | default_proxyswitch_max_ports
 vpx_dvs_uplink                | uplink_port_name
 vpx_dvportgroup               | dvportgroup_name
 vpx_dvportgroup               | dvportgroup_key
 vpx_dvportgroup               | dvportgroup_type
 vpx_dvportgroup               | port_name_format
 vpx_dvportgroup               | policy_live_port_move
 vpx_dvportgroup               | num_port
 vpx_dvportgroup               | config_num_port
 vpx_dvportgroup               | uplink_portgroup_flg
 vpx_dvhost                    | max_port
 vpx_dvhost                    | current_max_port
 vpx_dvhost                    | has_shadow_ports
 vpx_dvport_setting            | dvport_key
 vpx_dvport_setting            | dvportgroup_id
 vpx_dvport                    | dvport_key
 vpx_dvport                    | conflict_port_key
 vpx_dvport                    | host_local_port_flg
 vpx_dvport_membership         | dvport_key
 vpx_dvport_membership         | dvportgroup_id
 vpx_dvs_scope                 | dvport_key
 vpx_dvs_scope                 | dvportgroup_id
 vpx_dvhost_hc_result          | uplink_port_key
 vpx_dvhost_hc_vlan_result     | uplink_port_key
 vpx_dvhost_hc_mtu_result      | uplink_port_key
 vpx_dvhost_hc_mtu_result      | supported_flg
 vpx_dvs_ipfix                 | collector_port
 vpx_dvs_vspan_ports           | port_use
 vpx_dvs_vspan_ports           | port_identifier_type
 vpx_dvs_vspan_ports           | port_identifier_value
 vpx_dvport_vlan               | dvport_key
 vpx_dvport_vlan               | dvportgroup_id
 vpx_uplink_teaming            | dvport_key
 vpx_uplink_teaming            | dvportgroup_id
 vpx_dvs_blob                  | dvport_key
 vpx_dvs_blob                  | dvportgroup_id
 vpx_dvs_opaque_data           | dvport_key
 vpx_dvs_opaque_data           | dvportgroup_id
 vpx_dvs_rule                  | forward_port_key
 vpx_dvs_rule_qualifier        | src_port_num_start
 vpx_dvs_rule_qualifier        | src_port_num_end
 vpx_dvs_rule_qualifier        | src_port_container_id
 vpx_dvs_rule_qualifier        | src_port_type
 vpx_dvs_rule_qualifier        | src_port_not_flg
 vpx_dvs_rule_qualifier        | dst_port_num_start
 vpx_dvs_rule_qualifier        | dst_port_num_end
 vpx_dvs_rule_qualifier        | dst_port_container_id
 vpx_dvs_rule_qualifier        | dst_port_type
 vpx_dvs_rule_qualifier        | dst_port_not_flg
 vpx_dvs_traffic_filter_config | dvport_key
 vpx_dvs_traffic_filter_config | dvportgroup_id
 vpx_dvs_traffic_filter_param  | dvport_key
 vpx_dvs_traffic_filter_param  | dvportgroup_id
 vpx_remote_cnx                | port
 vpx_host                      | soap_port
 vpx_host                      | authd_port
 vpx_host                      | cpu_power_mgmt_support
 vpx_host_vm_config_option     | create_supported_flg


VCDB=#  select table_name from information_schema.columns where column_name like 'hard%';
         table_name
-----------------------------
 vpx_non_orm_vm_config_info
 vpx_non_orm_vm_config_info
 vpx_non_orm_vm_config_info
 vpx_vdevice_file_backing
 vpx_sn_vdevice_file_backing
(5 rows)
