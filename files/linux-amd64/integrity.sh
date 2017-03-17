#!/bin/sh
cd `dirname $0`
./cpverify cprocsp-compat-altlinux-64-1.0.0-1.noarch.rpm 3A5C5DC156019365A96B2D4252DC133800E5D788EC67DD00643BD0B209D0072D
test $? -eq 0 || exit 1
./cpverify cprocsp-cpopenssl-64-3.9.0-4.x86_64.rpm 726C2656D0CC39E4717CD53AA8506B4C93B04A62EE901D0F784A0817CB4F6E51
test $? -eq 0 || exit 1
./cpverify cprocsp-cpopenssl-base-3.9.0-4.noarch.rpm 41C6DF7BCCC858E38E6BCBF667E1CEC7368F3616B28C7071E8CDD616E3DAD274
test $? -eq 0 || exit 1
./cpverify cprocsp-cpopenssl-devel-3.9.0-4.noarch.rpm 382F7492B17690C604B49D2DCE3E015C332322F534F719AFAD9BB8EC01F7133D
test $? -eq 0 || exit 1
./cpverify cprocsp-cpopenssl-gost-64-3.9.0-4.x86_64.rpm A0FBDEC0E7FA6F3A08C122A1338056B4F529E48BFE585E9AA3D433AACD89B5F0
test $? -eq 0 || exit 1
./cpverify cprocsp-curl-64-3.9.0-4.x86_64.rpm 1549AA3CEE2887D7ADDE8892557C8E15B62E206F0CAF7D52CA5A8835CE11BABE
test $? -eq 0 || exit 1
./cpverify cprocsp-drv-64-3.9.0-4.src.rpm 1175743F139059220211D4C86B69433DDD2E0776AC8473A0F0C1ACEEC98444DB
test $? -eq 0 || exit 1
./cpverify cprocsp-drv-devel-3.9.0-4.noarch.rpm B7624323CF5EF4D72138C2F1B000A302F0D661651BFEBB27F1D87F6CC9090F58
test $? -eq 0 || exit 1
./cpverify cprocsp-ipsec-devel-3.9.0-4.noarch.rpm DEA5EA2ED2974E4DFC03F1A8E91673578C0725326C3F1BBAFCA8E3F1557A7164
test $? -eq 0 || exit 1
./cpverify cprocsp-ipsec-esp-64-3.9.0-4.src.rpm 2EAAE31D87CBC95BF0DE5A28B026939E9942665D2393849EDCDA614C4D2D2245
test $? -eq 0 || exit 1
./cpverify cprocsp-ipsec-genpsk-64-3.9.0-4.x86_64.rpm BE5B48542ABDD5FCCA8A4C7E0D5EEEEBCAD40CBDDA620EBBBFDF50A17B579626
test $? -eq 0 || exit 1
./cpverify cprocsp-ipsec-ike-64-3.9.0-4.x86_64.rpm 4A48A698C9BB945F917963039D124501D8CC64BB65F864C8400D6460C1FD1C43
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-emv-64-3.9.0-4.x86_64.rpm 80A87EBDAC5705CB56001BCC6487EAFDF5DCDA35EEAFF4161A4393D8971FF39B
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-esmart-64-3.9.0-4.x86_64.rpm B1C9BA4432C60A5BC7762321952F1EED6DA826B0C4BFDBC53E9BAB4E485452FF
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-gui-64-3.9.0-4.x86_64.rpm 41CAD3DA982C8581282921805093BDB6213EB389ADA7AD4B6C5FEC4F5B0231F6
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-gui-gtk-64-3.9.0-4.x86_64.rpm 10C48C61BBB5A017CA339C39BDD34B45BB99587A59F8C47D818C19E0ED27D7A6
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-inpaspot-64-3.9.0-4.x86_64.rpm C89900DED2A1CFEB7DCCA7285293148038D4C5D47505DE34519DB81AEBAB626D
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-jacarta-3.6.1-3.6.346-1.x86_64.rpm 0AD1A021E539A1F0C0B4051111DDC4494A18A3976DC0526F0DFC5BDD105D6E95
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-mskey-64-3.9.0-4.x86_64.rpm CB618B66812E0563937DD9A44993ABA1B611646E60BE945F94F8C9F8F2B6B3CA
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-novacard-64-3.9.0-4.x86_64.rpm 5736DBF011859C847FD311DF28E408263B21ECB48F64CCC91B91EA62F7F13542
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-pcsc-64-3.9.0-4.x86_64.rpm FD162C0EBD3F2387207D51F2104298AAD09CF26F250D201EAFB7D8CC1CB470FA
test $? -eq 0 || exit 1
./cpverify cprocsp-rdr-rutoken-64-3.9.0-4.x86_64.rpm E8096A825E16D66F72E0A1E0B0A1DE5032DD72CB502E8C632B21A4721039D478
test $? -eq 0 || exit 1
./cpverify cprocsp-rsa-64-3.9.0-4.x86_64.rpm A8B610D22A113D1D1E9A87326D1E5C40B187675B3F8A46CDA9F372F9176C6CDE
test $? -eq 0 || exit 1
./cpverify cprocsp-stunnel-64-3.9.0-4.x86_64.rpm 4C8453B1F1B58CAC2DF8526F6BE7ECE2925FC3BD1B167687AFDC4533E4425016
test $? -eq 0 || exit 1
./cpverify cprocsp-xer2print-3.9.0-4.noarch.rpm 7E48035E1F60BA8BD7468A5E6196751D186ABC44EA34428A63C564B9282CA94F
test $? -eq 0 || exit 1
./cpverify cpverify E8514A06F101C9CFFD9CC9EF147D2FA202D80001F6ABEEB317E7E6F845157B17
test $? -eq 0 || exit 1
./cpverify ifd-rutokens-1.0.1-1.x86_64.rpm 11723EC15E5DD34E50C65DD661348EAA7C103968B0C9346A58765925C4E3FA66
test $? -eq 0 || exit 1
./cpverify install_gui.sh EB3BD709527BD8FDF252BAED92A9EEFDDAAD1D7123D9547EEAD791F93B50F42D
test $? -eq 0 || exit 1
./cpverify install.sh 024774ADB2E24AB8567B2E059DE3D5DF6DB67B2ADC4E58BAF8B8338295972A80
test $? -eq 0 || exit 1
./cpverify linux-amd64.ini 4D6C62FADB34C5E30DBD3E23FBC14F57B31E90AA62988039118336198CEF790A
test $? -eq 0 || exit 1
./cpverify lsb-cprocsp-base-3.9.0-4.noarch.rpm B08AFA0BAF49CD55B4E20F9BF856CAA0853C9A6EB733047572242D4B501AF337
test $? -eq 0 || exit 1
./cpverify lsb-cprocsp-capilite-64-3.9.0-4.x86_64.rpm 4F6107B293BB62A9B72228E491B3681F2E0B2BABEE86D8C6F797BAE00A6CA5DF
test $? -eq 0 || exit 1
./cpverify lsb-cprocsp-devel-3.9.0-4.noarch.rpm F6E5832295AFD565633C43044F84913747FAEF84ADCD205340DF07DC4B30FCFC
test $? -eq 0 || exit 1
./cpverify lsb-cprocsp-kc1-64-3.9.0-4.x86_64.rpm CA392ACB3232873A61F7F9421ED0B9CF134090281C2773165483E50594C18FAA
test $? -eq 0 || exit 1
./cpverify lsb-cprocsp-kc2-64-3.9.0-4.x86_64.rpm F13A0FF766422F162BD6EA2C18C8C07C055F55148951C0ADE87E96200DDE0BDA
test $? -eq 0 || exit 1
./cpverify lsb-cprocsp-pkcs11-64-3.9.0-4.x86_64.rpm 408E50E7EF38B5F792DC21B899CC93CCDF39BCB517136EBB8074AABB9DB29CCF
test $? -eq 0 || exit 1
./cpverify lsb-cprocsp-rdr-64-3.9.0-4.x86_64.rpm 881427DCD847088443F0B41A42D62BA9A82B2E35CEFE3CA32DBA0A75D4CBA2BE
test $? -eq 0 || exit 1
./cpverify lsb-cprocsp-rdr-sobol-64-3.9.0-4.x86_64.rpm 29F1A393ECAC316E1335A1FEA8BBDDBDDDDB644B5397F6EA6C741D60F8C31ECD
test $? -eq 0 || exit 1
./cpverify sobol-1-5.src.rpm ACB8C86537D1697E5E0E8A8AD56951EE4556FDFBBEF136AEAF90B0A25FAC6630
test $? -eq 0 || exit 1
./cpverify uninstall.sh 2A4515BE5CE7FB7AF3B50D03F56EB7171AFE8B7C60F5A7B0AC8FF5E04A0B87A0
test $? -eq 0 || exit 1
printf "Everything is OK.\n"
