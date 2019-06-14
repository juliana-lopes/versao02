#Importar template xml

#Criar uma chave de autenticacao para logar
AUTH_TOKEN="$(curl -d '{"jsonrpc": "2.0","method": "user.login","params":{"user":"Admin","password":"zabbix"},"id": 1,"auth": null}' -H "Content-Type: application/json-rpc" -X POST http://192.168.1.88/api_jsonrpc.php)"

#Chave de autenticacao
AUTH_TOKEN="$(echo $AUTH_TOKEN | cut -c28-59)"

#Template a ser importado _ Template Infraestrutura
curl -d '{
    "jsonrpc": "2.0",
    "method": "configuration.import",
    "params": {
        "format": "xml",
        "rules": {
            "hosts": {
                "createMissing": true,
                "updateExisting": true
            },
            "items": {
                "createMissing": true,
                "updateExisting": true,
                "deleteMissing": true
            }
        },
        "source": "<?xml version="1.0" encoding="UTF-8"?>
<zabbix_export>
    <version>3.2</version>
    <date>2019-06-14T16:19:42Z</date>
    <groups>
        <group>
            <name>Linux servers</name>
        </group>
    </groups>
    <templates>
        <template>
            <template>Monitoramento Infra</template>
            <name>Monitoramento Infra</name>
            <description/>
            <groups>
                <group>
                    <name>Linux servers</name>
                </group>
            </groups>
            <applications>
                <application>
                    <name>Monitoramento Infra</name>
                </application>
            </applications>
            <items>
                <item>
                    <name>Média de taxa de transferência</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>net.if.in[eth0,avg]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units>bps</units>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex>wd1-7h0-12;wd1-7h12-19;wd1-7h19-23;3600/1-7,00:00-23:59;wd1-7h0-23</delay_flex>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Média de taxa de transferência Saída</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>net.if.out[eth0,avg]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units>bps</units>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex>720/1-7,00:00-11:59;420/1-7,12:00-18:59;240/1-7,19:00-23:59;60/1-7,00:00-23:59;1440/1-7,00:00-23:59</delay_flex>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Quantidade de memória utilizada pelo serviço da API</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>proc.mem[apache2]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units/>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Quantidade de memória utilizada pelo serviço do zabbix</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>proc.mem[zabbix_server]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units/>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Quantidade de processos associados ao zabbix</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>proc.num[,root]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units/>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>IOPS</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>system.cpu.util[,iowait]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units/>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>CPU Utilizado</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>system.cpu.util[,system]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>0</value_type>
                    <allowed_hosts/>
                    <units>%</units>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>IOPS Read</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>vfs.dev.read[all,ops,avg1]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units/>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>IOPS Write</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>vfs.dev.write[all,ops,avg1]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units/>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Espaço disponível em Disco</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>vfs.fs.size[dados,pfree]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units>GB</units>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Média de Memória RAM Utilizada</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>vm.memory.size[avg]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units>GB</units>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Memória RAM Disponível %</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>vm.memory.size[pfree]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>0</value_type>
                    <allowed_hosts/>
                    <units>%</units>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Memória RAM Disponível</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>vm.memory.size[total]</key>
                    <delay>30</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units>GB</units>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
                <item>
                    <name>Média do tempo de resposta da API</name>
                    <type>0</type>
                    <snmp_community/>
                    <multiplier>0</multiplier>
                    <snmp_oid/>
                    <key>web.test.time[Monitoramento ViaCep,Página ViaCep,avg]</key>
                    <delay>60</delay>
                    <history>7</history>
                    <trends>365</trends>
                    <status>0</status>
                    <value_type>3</value_type>
                    <allowed_hosts/>
                    <units/>
                    <delta>0</delta>
                    <snmpv3_contextname/>
                    <snmpv3_securityname/>
                    <snmpv3_securitylevel>0</snmpv3_securitylevel>
                    <snmpv3_authprotocol>0</snmpv3_authprotocol>
                    <snmpv3_authpassphrase/>
                    <snmpv3_privprotocol>0</snmpv3_privprotocol>
                    <snmpv3_privpassphrase/>
                    <formula>1</formula>
                    <delay_flex/>
                    <params/>
                    <ipmi_sensor/>
                    <data_type>0</data_type>
                    <authtype>0</authtype>
                    <username/>
                    <password/>
                    <publickey/>
                    <privatekey/>
                    <port/>
                    <description/>
                    <inventory_link>0</inventory_link>
                    <applications>
                        <application>
                            <name>Monitoramento Infra</name>
                        </application>
                    </applications>
                    <valuemap/>
                    <logtimefmt/>
                </item>
            </items>
            <discovery_rules/>
            <httptests/>
            <macros/>
            <templates/>
            <screens/>
        </template>
    </templates>
    <triggers>
        <trigger>
            <expression>{Monitoramento Infra:vm.memory.size[pfree].last(0)}&gt;65</expression>
            <recovery_mode>0</recovery_mode>
            <recovery_expression/>
            <name>Aumento de memória em mais de 65%</name>
            <correlation_mode>0</correlation_mode>
            <correlation_tag/>
            <url/>
            <status>0</status>
            <priority>3</priority>
            <description/>
            <type>0</type>
            <manual_close>0</manual_close>
            <dependencies/>
            <tags/>
        </trigger>
        <trigger>
            <expression>{Monitoramento Infra:system.cpu.util[,system].last()}&gt;85</expression>
            <recovery_mode>0</recovery_mode>
            <recovery_expression/>
            <name>Aumento de processador em mais de 85%</name>
            <correlation_mode>0</correlation_mode>
            <correlation_tag/>
            <url/>
            <status>0</status>
            <priority>4</priority>
            <description>Aumento de processador em mais de 85%</description>
            <type>0</type>
            <manual_close>0</manual_close>
            <dependencies/>
            <tags/>
        </trigger>
        <trigger>
            <expression>{Monitoramento Infra:system.cpu.util[,iowait].last()}&gt;70</expression>
            <recovery_mode>0</recovery_mode>
            <recovery_expression/>
            <name>Quantidade de iops acima de 70%</name>
            <correlation_mode>0</correlation_mode>
            <correlation_tag/>
            <url/>
            <status>0</status>
            <priority>2</priority>
            <description/>
            <type>0</type>
            <manual_close>0</manual_close>
            <dependencies/>
            <tags/>
        </trigger>
    </triggers>
</zabbix_export>
"    },
    "auth": "'$AUTH_TOKEN'",
    "id": 1
}' -H "Content-Type: application/json-rpc" -X POST http://192.168.1.88/api_jsonrpc.php