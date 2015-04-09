create table `fly_article_comment` (`comment_id` int not null  auto_increment ,`comment_title` nvarchar(100) ,`comment_content` nvarchar(4000) ,`userid` int not null ,`nickname` nvarchar(50) ,primary key ( `comment_id`) ) engine=InnoDb auto_increment=0
create table `fly_article` (`article_id` int not null  auto_increment ,`article_title` nvarchar(200) ,`article_content` text,`create_time` datetime not null ,`last_update_time` datetime not null ,`user_id` int not null ,`user_name` nvarchar(50) ,`article_type_id` int not null ,`article_label` nvarchar(1000) ,`article_little_title` nvarchar(100) ,primary key ( `article_id`) ) engine=InnoDb auto_increment=0
create table `fly_article_type` (`article_type_id` int not null  auto_increment ,`article_type_name` nvarchar(50) ,`article_parent_type_id` int not null ,`article_type_depth` int not null ,`article_type_remark` nvarchar(100) ,primary key ( `article_type_id`) ) engine=InnoDb auto_increment=0
create table `fly_log` (`log_id` int not null  auto_increment ,`log_name` nvarchar(100) ,`from_url` nvarchar(500) ,`to_url` nvarchar(500) ,`visit_time` datetime not null ,`to_userid` int not null ,`from_userid` int not null ,primary key ( `log_id`) ) engine=InnoDb auto_increment=0
create table `fly_message` (`msg_id` int not null  auto_increment ,`msg_title` nvarchar(100) ,`msg_content` nvarchar(2000) ,`msg_to_userid` int not null ,`msg_from_userid` int not null ,`msg_from_nickname` nvarchar(50) ,`send_time` datetime not null ,`has_read` bool not null ,primary key ( `msg_id`) ) engine=InnoDb auto_increment=0
create table `fly_role` (`role_id` int not null  auto_increment ,`role_name` nvarchar(50)  not null ,`role_remark` nvarchar(100) ,primary key ( `role_id`) ) engine=InnoDb auto_increment=0
create table `fly_user` (`userid` int not null  auto_increment ,`username` nvarchar(50)  not null ,`pwd` nvarchar(100)  not null ,`create_time` datetime not null ,`role_id` int not null ,`email` nvarchar(50) ,`phone` nvarchar(11) ,`qq` nvarchar(20) ,`last_update_time` datetime not null ,`nickname` nvarchar(50) ,`portrait_img_url` nvarchar(500) ,primary key ( `userid`) ) engine=InnoDb auto_increment=0
create table `__MigrationHistory` (`MigrationId` nvarchar(150)  not null ,`ContextKey` nvarchar(300)  not null ,`Model` longblob not null ,`ProductVersion` nvarchar(32)  not null ,primary key ( `MigrationId`) ) engine=InnoDb auto_increment=0
INSERT INTO `__MigrationHistory`(
`MigrationId`, 
`ContextKey`, 
`Model`, 
`ProductVersion`) VALUES (
'201503240132244_flyMigration', 
'Flying.Entity.Migrations.Configuration', 
0x1F8B0800000000000400CD5CDB72DB36107DEF4CFF81C3E754B49D66DA66E4641225EE641A279928C9AB0726219913F0121274AD6FEB433FA9BFD005AF2001900404499EBC58B81C2C1767970B2C37FFFDF3EFF2E543449C7B9CE561125FBAE78B33D7C1B19F0461BCBD740BBAF9E577F7E58B9F7F5ABE0DA207E75B33EE291B0733E3FCD2BDA3347DEE79B97F8723942FA2D0CF923CD9D0859F441E0A12EFE2ECEC0FEFFCDCC300E10296E32C3F17310D235CFE809FAB24F6714A0B44AE930093BC6E879E7589EA7C4011CE53E4E34BF78AEC40B6C55B00A03BD77945420442AC31D9B80E8AE384220A223EFF9AE335CD9278BB4EA101912FBB14C3B80D2239AE457FDE0D9FFB146717EC29BC6E6203E517394D224DC0F3A7B55ABCE17423E5BAADDA4071957ED85397CABB745F6534F4095E25518463EA3AC3259FAF48C6860F34BCE8CF7BE2F47A9FB49400E6B07F4F9C55416891E1CB18173443E489F3A9B825A1FF17DE7D49BEE3F8322E08E1250559A1AFD7004D9FB224C519DD7DC69B5A7EBF12E0260C5CC7EBCFF78600ED74C9DCEA19DFC5F4E985EB7C0061D02DC12D31387DAC6992E13F718C334471F009518A33D8D77701AEA9E7CD5A13C612DC2C0B9404E5B9CE357A788FE32DBD03933B0353BA0A1F70D0B4D4A27C8D43B0439844B302CF5DCD4F625A6EAF72BD5FCFAC2C58E4389B56E73806ACF73D86BF46A47DA62FEBD2EBB83FC722B44DE17436802A018C6C809F7B2C1B68D69CB2810B2B946C569BB601F8D386CD6518B472C35E64CD5A6FA0E14BF95BD31408CAE94D9106D600997DCED8EB1920F62D748428B0CADE52376030079371CF6B537612523A83EB26FE5ED7A5B1166DB7C6BA4EEFDA5A0698FAB799143A8093630B1FD35852949501864D9B29C10288C5EF2CE26510BB66DF4F6513EF93ED7C5B80C1A7B301926C8DA8DFCC3B16E3D97A1344B713D56EB224BA29B23127FECCCA423439CA32F7611E523BEF7726B18510BCD2B036D06CE3BBC6798EB61A2FA37AC2E98C30CACD8CB099772C2364EB1DE76CC9569A8EA92FEC4453E563D9E1368332E4F708D8610EADE282398E033BAEE20EE5F00A46AD025E2709C128B665E29F139D33341B7D3AE3CE12C3D3733BF158E65D2E6887679A7429573E6DC8F6150C763EA5D8E8D351AA712EBA8C9AE794EC118AAD77123EA57F071678A4B9A8CDBB9999B63F0E02F6148E079816DE19E95D128FC603E71616F9F163340AB0B082F5CBB063BDB3D32403DF02217E186D0F70A018F79F2B08D15008EEA116E6351CD3581B7E90657BC069D6EE34AF97EA3F5985B9C6549A3ECA5DA713A5CABE2D8609266F16E008D25C88F221D430D565D804149CFB6510E5DDC1C4D4FAC4229BDE9E7E26205850249B5F85561393D9EB4F36B97A89CAF8D332A5CBB37A55A2B549C87A8A8CECF21AA5295099CBD0D62DCEBA4ACFAE7E59EB272FA30AC3F373490EB395B65D095E84A0D5412F2C0D925E85594EC14FA05BC48C691544C230DE2E149A6D5692537F1813749A6FE6B1BFABB963B9D42150A7CC2B783E36A27C54DC8A252471058032638E08CA4612A0AB8414513C95549D83561F3F658075973E667BD094A1B69DF3719B308B8793876C6328DD0B84C7E95A45A4A537D8CB216B3C8136830072C8461DAE5A20A9393BE7D392CF49F28A55E739E7A0496839E8D2C794D252E8D4A03B1F9FF6A8CE77CCC71343261E54ECD533206183DA464D1CD186B866839D6E521FD2BD966792E6E0D69943196ADD6580D94B0F4AA17B231E9B4BA9A2ACBDDD4A198D19BB16F9EC53D184CBF829914DA93D4CEEC916188E317C823ADDA77C84BADF10BDB94952C237031E0DE1CBB38039D1D999419FE0D2594A6F5F27FC7A3E5E9A3C9C4211D9DBB5CE47EAF2743C52D73A1FA949C4F1384DDB7C143ECFC623F1ED7A3249A248AE59575312B45EC7A33185F66C6B6E0ECD1958DF24943355CA6D5270BC5EE5E9BC2914C95B9A6BD6C392868EBD0E4DD9E4741C74E9612A6929741AE0CA0F4F92EEF9D85C728CC7E49AE76375E9311EAA6B7D34C658DD12995B62799BA46F86F2692A6DB697E5BC321569B7491C91355CB326962C0EE9753C9A7DAE2EF4CCF7B9BCF8D3DF67F9B4C3DEAB7449A9218EEE1E9759261EA46C38DD81DC961DD479231EA56ED2D04D9516EA69A76A9A8FC1B23E3C00FBFD18AE27F46FE6945A1292373D8509BD47F617C2E5FD7048BB7A7B893FB8AC5FD617E7D33556C24D7A35C4754065F761C06ED1AF77EB1F64C1FA17E59F2B1296B14C33E21AC5E106E7B44AAEBBCF16BF0D6AB51E4FDD9497E701D12A9E32F84CC06EF952C8543DF941806ECE5C56B114DFA3CCBF439998B4EFD0F7285092C257254A7AF8FDCF294AFDEC9924968AF66C4230EDE223032AD9AD023A0895A4853F52855EE86FB5A2CEA74A746BB252FC4C84BD85AADF9F32EC8755BDEB99B60654DF3058821F94F798F05D28EE3122FCC8DEF7EB124C449456F2A83C92B1A0B2C21D33B76754A7B38707B05D2C73585F30AC8FB1CC377939CC3EB4138B61F646EB7F577960960977CAC72C43390897869527B6A29361A189829ADAB8FDBA125BA8621989A5B78AF0E1BD09DF259FDC4FC368179418F0DA4E65C741782D1473D822B6A47643158619615B618CA250632F282BD1BC882F546558B2BC618DC66D9210AB051A06F662AB58E2201623D447CCD860D3F28703BFA6C58BD763561E1C647786C506B63687AB2598B329A6A502968C5A6607FB940D58F261BD2A01B91ACF7531BBA200C5EB4517F0C0E7E703BD1E54050066919FDEF7FEE2E7CF8A6C93FC4E73FA83FEEA1218B6E03681E7AA954D7637DD7D8CD697FF631FFE4F2CA5531930551830F5547466F980AA7A40854FE697168C5516A8E0238DD20365E5810A3C9B5B97A02C4B502117FB142D88F98DA5C7FF4F73CB37380FB71D04FB7FE762ECB3C44107DA8C79176F92C6BAE1A178899A2103E3BFC614817B428C5E1BE453E8F66117CACA9F6F881430E46D748B8377F1C782A6057D95E738BA25BDCABDA537BE7E5999D19779F93165BF721B8F006286CCC37E8C5F1721095AB9AF24E1A70282B9A13A9200A9D6944514DB5D8BF441C83BAA806AF5BDC129C4DCE057BEE0282500967F8CD7E81E9BC806DC7B8FB7C8DF35592A35C8F446F4D5BE7C13A26D86A2BCC6E8E6C34FE070103DBCF81F01F1F31A70510000, 
'6.1.3-40302');
