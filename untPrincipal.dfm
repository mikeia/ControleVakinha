object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Controle Vaquinha'
  ClientHeight = 564
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 193
    Width = 704
    Height = 292
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 688
    ExplicitHeight = 232
    object dbMovimentacoes: TDBGrid
      Left = 0
      Top = 0
      Width = 704
      Height = 292
      Align = alClient
      DataSource = dsMovimentacao
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbMovimentacoesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Caption = 'C'#243'd.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = []
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_MOVIMENTS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Caption = 'Data'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = []
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TP_MOVIMENT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Caption = 'Movimenta'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOTIVE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = []
          Width = 257
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Caption = 'Usu'#225'rio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALUE_MOVIMENTS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end>
    end
  end
  object pnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 193
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 48
    ExplicitTop = -16
    object Label1: TLabel
      Left = 64
      Top = 2
      Width = 179
      Height = 29
      Caption = 'Controle Vakinha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 79
      Width = 79
      Height = 19
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 161
      Top = 79
      Width = 70
      Height = 19
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 10
      Top = 2
      Width = 33
      Height = 33
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
        003008060000005702F987000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC400000EC401952B0E1B000000
        1974455874536F667477617265007777772E696E6B73636170652E6F72679BEE
        3C1A000013E94944415478DABD99077854D5D686DFA9C9CCA44C4880401A1041
        A4A80811A44A8CA0821489201240291640AA5431A14911A449111091225DE122
        882045407A519A4080900A0112D227339976D79C41F87DEE55D1ABFFCE739299
        93B3CF5EDFDADFFAD65AE7A8DC327880716ACB3E8EAEFF8E67FB77E6A1A71E7D
        90297F7A5C397C86EFE6AFA761E76779A25D8B079AA3FA23006B46CC66E5F499
        58B15391606E92C51E77DE3F02205615246B84C91AB9F8A2A3FBBB43E93A7DF0
        5F037062D31EC6BFD49B424A79BEC1530C486C43E29B5F70ED46269BDC97FF11
        001D55D5A95A299C898B139837612BDF1C3F4C000692BE5A4A838EB10F0EE0A3
        B683D8BC6D254F54A8CB844FBA11F84424CB876C60E9A6AFF8E2EC7122EA3CF4
        8F00C83C778557EBC6D0BB63477ACEEA4CC18F19E2B4559CBA7596F66D127877
        EBDC3F0630ECA1F61CBF7A84413D3AD169446BC8B79093954FA72E1348E8F516
        7D9726FD23C6FF3296F41ECFAACF3EE1AB7589048799C16CE4CBE93B99B37C23
        31D10DF9E8CA96DF0630B6FEAB1C38B5879993DEA6FE0B7570E496A02DEFC7F0
        17E77339239DCD7F813A693F5DE25F1F2CE5766A36B563EBF3CAB4417F38A783
        50A97A6424D3B7F4C771BB186DB08993DF9C63E8D885347B2296492757FF2780
        2D5396317DCC70260EEFC3D35D1AE0C8B3A0D1AAC9C92E24BEEB04C6CC9E49EB
        41AF3EB0E12EA78BD18F75E1C8F98398F123CCA025B9D44AA4A1229F590EFFEE
        DC1D73563379F050BE5C2BBB503100A7C38536C8C8F7EB4EF0FEF44F193EF943
        DA8DEEF56B00CFA82AF04CBDC68C59F11A0E31DA33B4263D6BE6EE61E9DA2DEC
        72673FB0F147D6EF24B14B2FD1117FDE6A6FE2C51EF5C164E6C7AF0F326C7E06
        13572EA449C20BBF7B8F3855287DBAB6E795775AE22829F3DA131AC0E41ECBD8
        F3E361B1E7D67D00CBDE9ECCAA4F16B06BEF54DC2E372E979755DA005FA6F55F
        C3F9D337585176E4818C9FF7CA28D6AD5BC193E52B3131A93CC67A09B8D515B0
        5CFA1726D7055AF5CA64C0E451F73CF85BA387BE21751EAFCC88795D71145A95
        736AB50A951C712D4791F0763F5E5F30C60BE025554D1A367884918BBAE1B863
        B97713CF0EAC5FB08FC5ABBE66F0B449344D68835F8899D2A212B293D339FED5
        6E2E1E388DB5D88A46A72127F50657F233E8D9B202AFF53062F36F02BA40AC69
        DFE3433E97AEAA193B278FA8B0CAF8CB7D74BE7A6A367D8C984EB184D688C2E0
        6FA228279F83ABB6317BE458DE4C789197FBB5B8B7038A4DE58C4C15393F7EE2
        225FBA2FA0B259ACEE56C630268C7C83E62FD6C5516ABFEF06954CF0F725E9F5
        E5ECFDF9241ADC18D1CB5F3536E59B8E68A32F46A31A0F11CBEC6A5EEEE447F3
        466AEC61F1149F5D256ED3A2D3EBB896EE66DCAC42827CD58404B971D89D582C
        2EAE5AACB28C5D003AE5C72559A70C879C69F9487DC67FDE13479178FFFFE8A4
        D6A063FFD767499CB6989DA559A8AE5F4C75BF5AF3493EF978180F3F1A86A3CC
        F9EBBDF4802867A238338FEC8C3CA6BEFB25D9A565C4B734D2ADB3119D0E245E
        EF0D9BCD4D991CB8CB70ABF4A8542AD97A0157E6E69591771824005F6C6FC069
        75A391F376F1D7171B2C6CDC6321D4A067D48C4E844604E1171E246C28F995F1
        0A00BD864BA733796BE04C565F3A862A27ED863B3EEA31E67C3890471B55C561
        73288B6A7CB5A0974338A70C930FFB961D62C287FF6278D7109E8BF3A5A0C0CD
        7FCBE3329DBC7C1711611A1C0E59546E6315833B0CCAA5D773263AB6F5C56ABB
        7F6D60A08A1DBBAC7CB82687C411ED69F17A6328B97B81271ECB1C02D881476F
        B43E5ACE1CB9C6A01173D9987EDA1B032D5521F4EFDE99F8FE4FA34016D9DAB1
        FE24A70EA5888C162981131E558E6307AE105159CDB4C941E4E7BA7E65B446E3
        35C663B0E7F39514072BD694F0785DBDE2FD1D3F58B1C8BDD7CC0A46EBF1BCE3
        D7A0CDC16A468EC923E3BA8B98660F91957647119490507F9E78AA1AADBB8892
        79260A2536CCDFCB82951BD8EBCEF10218593B9ED49F2FB22E653A5F8EDFCAE2
        E5BB85956A2A09DF2B876A950572729DE4DA558C1F18488D87B4CAD62BCA2046
        0788072F253B28B1B879AC8E8ED252B7429BE212370B971673FE8A83C8500DFD
        FBFA5150E8A2BC185B49BE1716DDDF3E0F152F5D7630EEE30282756278B04639
        9F95ED205BE24227F1F146CF67E894D4962ED58653A5F6234C3BB7C10BE0C6A5
        34FAD66C2E8553B05C6CE3E9EAFEF4EA6E223C428BD32E5C35A858B9BC84D5BB
        2C6C5F1A427EBEFBAEAC8953649D118905A23E5E97FA8B87E64E0AC2DF5F2572
        0C065F153AF99C7CCECEB0A90512A812C0725DCB5A3E8C1EEA4F7EC17D106671
        C4F37D727835CE48F79E269CE2088D4E45668683CF5696F0FDE5224225DC0BA5
        5A5D72693F9544B9EE25B2EEDA18F29C76C6BE69A651431F8AC4530E87FCCBE5
        202848C3E809251415B9983BDD4C61A177518F717D07DE215BA2F889701D91E1
        5A7E3862A348BCB5764E300EA717648ED0ADC7C43BD40DD451E7111DE72FD8B9
        58E0A049553D49A302282AF6DE2F3040C58077F30990BF5312FDC8CB732A2AA6
        D5AAF00F5073E4A88D498BF20952EB58E93C7E3F91F5D03D49AEA39485E32A10
        5A41235410D739BDDA6B0A7F941B37DDF4197A80364FF8D14F686011AA78B6FC
        D8893216AC2866CE583395AB6805ABDBB31E33E715F3523B03E582D40A809FCE
        DA494B77D0AD9B0997CC550BF05387CA18B1249F159382F1337977CB6854B160
        4931DB4E15F3E9CCA654AAA8A624F3CCDD20D36312B9CEBEE5E4ED71B708D61A
        586117159ADB79847BEBFACDCC1B1D4644B846F8EB12052CC127EC490C51CD51
        078B5C3E3A4114A08C558B43EEF156257F024507CBFCDD1C10B06EE14503AB0E
        B34B54DD08A5656EC52845FA04944EA3C247726481DACD31835D72838AC6E249
        BDF44605422BB74A516C857A096F4870AAF57C713A1157AE85D2B4FDD8AE8BB1
        3A1306839A8C4C2703A664D1F6E50EA83A50D31D533390318981E45D17091517
        1A6BBE24BC2F27879B4D8BF63367D91E16BC5B91A8486FF06AC4785F39FA8516
        B3CB5486AFD3ADA88355E2A163910F336FFA2986BAEF2AB00256800DAD50CCA6
        00DBDDEB455A05545C899E05D97E58E55AA7CA1BCC9EDDEA37E326837A3D43C7
        BECD444255120F77B05CFC4A9449285D59CBE409051CBF58886AF3A425EE5963
        C7F35A6C9492FE0BF2D4F8463F8FCE1C81DAC7C90B0D9388A9E6CFF8F70295E0
        FDC598E651F9148A913E4E2726F14C99D386D3EDA2584054B16BF83A5DAED778
        0D358B65ED220AB8A6976BC578BD7857AD5263755805849A00B9DFFE34F33DD0
        66B38AC40F0A389952C4B6A31370D924B34B8962BDBA9DC020179FAFB0F0F99E
        34864C4CF2C6C0BCAEA359BF76256DEA443072B01F258525E8436AB0F3802F33
        96FCC0F271150932AB115BA52093822DC8CA527329016258AE35876DED767229
        FF2243F60F24C437843B62F8FB3946E265373C63A3BF8D892116CAC9F53972FD
        6771CB316A4DBCB2BD132186F214CAF5BDF30D0CC8F3A544EDCD239E44D873DC
        4D86F569CA73CDADD8729231059898365B62E45C069D5FE9CE803553EEABD0A6
        098B999DF43E9545FDFBF731D3B4958EBE3D723018758AF2FC229D66878A1655
        F265CBDD58CA8A98D56C2E0F996B10E91FC5A2B3F3597C6E215A9D912887868D
        9901CA9C4EE185A46B9D42BF1286D61B41C7E84E589D560E5E3F40E291F730E8
        FD84922AF6A5CA3ADABBEBC82EBC335CD6B1D859B22284833BEDCCFF349F2CAE
        3378FC243A26BE715F857ED1E1EC2BE9BC57AF1B578B53A9409024331D3D3B1A
        79EE99BBA9DFEDA5438DE85C425C5E0AB4087B9A59CD3FE6E4AD138C3934823C
        5B9E288F56898923D7CCCA7D1B55CD57263B24D86B97ABC3F2565F7036E70CE3
        8EBE4F7A51AA04B89E1C8D8BE42BC1F700F8CAE67D2BE5C5F2CD1649A7766E92
        47B4298A0F7E5C4D68F5C8FB65CB7F6BEA930FFEC4DA511F73F487A3CC1E5D41
        E44CA368BA309420F1543D01E0F690D56623BEDACB3C1C5493E6022439FF12FD
        F6F6158F0650DEA9665B46A072BF1784FF1E035D12272DC25AD23AEA792A9BC2
        30680CB4DADE1ABD9F3F1EC867AF9623CF13F832D7A35AD76F3A1932E5168D9A
        35A2F3E4FE3CDCB4DE7FD65DBFF558E5C08AAF19D773089B675755E4D0A51279
        D53909BC6E66BD70F4A49F8DDD55AF5335A01A5FB5DEA4CCE9229C4E29B88A55
        A75538DD5F38ED19F3EFC68C516AAC6089916FDAEF54CE27ECEF89F6540A5D7F
        8EA6AAC44B750F2DC3F2B045DD4663D729654A8721D718B77C36CD7AB4FD6F66
        FE3680EDB3563163E878BEFEB88A288C0BCDCD00FCF7D6BEFB5FB757F364D198
        31EB6810D9843C4B2E17F32E48EA3728D5ECD16B4114ABBDB7F6139579B2AA08
        BE2CE576D8141AF9E80D9C4F3DC6E149DD20B840F453A5D08E523DB63A19943E
        9922D4D1F2E23BA9BC3B3389E78724FC3900C7367CC7E8CE6FB26C5C55A91425
        195D96F6F0600DF920DB61B72AD969CB533778EBE9C304944AC6951FBBB82CD2
        E5CB86748348A54EBEABBD859A6CA1DD65E7E5C852D2D456B9855B7142918F8B
        EEE93598F253335C19994A61E5285782A55E9A94F34EF2EEB8797DFC35A66C58
        CC93F1717F0E80B5C8C27301D10CE9589DD6713E944A07E5168FAAEFB830D6E9
        883AA2125AA94E0F152673567D433CAAA3BE3B9CBAAA1A3844522D377FC2597C
        C35B05F855C258F171B4122B675DC99C5465622BB353D75589C6A68771E8A5EE
        2ACEA4F8DC1AD41A290745C18C3E6A09E252666DBAC2B74529F8FA19FE1C00CF
        7827FC7972B3AEB37A5928F962B8270B6AFC2B62AAF5B224971225F56B03FDB9
        B6FF2A87775FA4F10B8F502526428CB1A3D2484A55A9EF324EE64AA1A8F5D391
        7A3C8343DB2FF0546C4DAA368FC65150E435449261C9858D023A5BA906CC5247
        75ED954DF9F030E6667CF35B26FE3E80F4D3C9243CDE8CF806D10CECE74FDEED
        527CAB3C8D2EA4A652A56A7D751CDA719EA4496B306312A193C2EEA3BED48E89
        523A3B4FFFEA89444F53EEE9A4CE1D4F63F0B02522D07ED2E297307E6C571AB7
        AE8DC36A57AA4E7BCE45ACA9DF1354DEC0DC05456C3C71952FCEFC4044DDEA7F
        0D8067AC1C349D2573E733223E92B8E67222A2AD34FA61E255275AB381D15D96
        909A725BBA4FAD94DF4E02CC4616EE1EE2A9E6D82C2D68EEAD227A8F7E0E7C74
        BC153B93A28252091F8D74890EAA542BCF94757D8572A56289F0BF280B32B6B2
        EB007CB8219D3706F52761F6F0DF33EF8F0178C6C4E6BDD973E0305B3E0A415F
        E55934E668EF0EF8F9B068DC56B6ED3881596D5244E4BAF30EBB4E7FA4F4B203
        E2664B2F50C8DA33498A70C53D368CCA9A72CAE77C57096D9E6BC09BD261398A
        6DCA0E38F3AF5096BA8B76C372886DFA14EF1F58FA47A63D188094133FD327E6
        05660D8CA0664C5DB4612D4425C40E9B705D683477D42676EF3B233DAF8D0E71
        8DE83FA583C8AC34F18DC649F7E5E2AB1DA3A4B6F263FEC84D6CDE7504A37455
        CFB4789481533BE2929D521BF452714A3F9DB98F8BC7CF32646E064B8F7F43D5
        06B5FE1E009E11A70AA74BD3087ABE6A44DF78187D1A4FE4D36F064875A7F7F6
        959E8816A5F250C5D37C27755AC4A50B5922AE2A2A5632336BC7406FD7EFE1BB
        4EE37D5C62F73EC279ADE9743E3F9C44D9D1992C5F6D61DD0F19EC72673E8859
        0F0E6072EC5B1CDD7B804D0B252984B5E64A8691D7FB7F44AFB671B478A10E61
        51E524065C5CF8298365B37693935F2815A7B71AB53ACA30F9F8D26B581C7525
        C07D046476661E07775DE093F5DFF2D1843789A9A7C69DF92D1DDECEA5516C33
        C6ECFEE4EF0570530ABDCED51BD2EFF9683AB4D1E2537F008537F319D66D2997
        4AB244570C9237D57268E4935E72868A5F6EAD3CDC92FC572A14B3DF7D02578C
        95084298B1EA75426B54C6766C2E9BB73958B0FD2AEB2F1FA3E243117F2F00CF
        98DAAA1F7BBEDBC79733CAA18B68816F685D294FF5A41C4E61F6FB5BC8BD5D24
        B5BC1A8BD3C1238141F8A8BD8F466C2E27170AF2306AB4CA8363A3D06EF0C4F6
        D48A7D58FAC932AC37CE6217FE771A7687D8675B306AE7820735E9CF0138BBF3
        30835A77E3B3B16154AEDB0475C863A23676E505C4A7895FB373EB8F22FB1A1A
        96AFC0909826602946090EA38999C70F72ECF62D25A9D56F18CDF0C509384462
        9192C395739AAC3307E9FD41167376ACA66EAB46FF0C80DCF46CE2A36218FF7A
        148D5A54472365B15B7A024FC2DAB5F1140B676F1712490F11FD306DAB49F2B1
        DF7DAAACD3B3352599E55793E58B93CE094DEE3D7556697D71A67DC3917D5748
        5A96C6C6B4E3044786FE33003CA39DD43A4D6A05F1EE00E1794D5121A9F1D552
        BBDB4AEDBCD4662AC16A7F7C24A9CD911DF0933ADF338A8A8B18223B60156AE5
        398B59BCBCBF37E8ED12181A1F5417E7317D5E19877ECE638B3BF9CF98F3E701
        2C7D73126B16AF64E38C4AF80457475F4D76A1CCFB1E6B5CF7655C389F212AA9
        A5D053FBE07D2CE110CD0C90DAC8296579F90A01CCDD391887C48B4A5AC9B294
        EDD2EF5E267EF80DBABED183DE8BDEFB670178462BC9098F56ACCC8C0FF4941A
        9BA00F6B84CAE97931E2223E769A9048544AA3FDD51CBBD34991A4BAB55B864B
        736E9406C94059D6110C96830C7BAF8CB337AFB3F301B5FF7F067064DD4E86BF
        D29D36B5AA316A8856E431026D641C3A7FA1456929896FADE2C7CB5725DF7A41
        785E59D4A81CCEC445DDF12F6FC65E700747FA7722B7194C9DE560DBCF294C5F
        BB82465D5AFFFF00F08C2D533E63FA9851D436453072881F55C31DD83495D004
        56431B1A85AD50454A72AE920BA2AA05612AAFC1999D86234F80396F909AA915
        E34B385F92CEF00FA6D26E4CAFBF62C65F07E0193FEF3DC198D857A53476522F
        C42CF58D2F756AAA09ABAC521E1DDE7B3922DAEF28739379DDCDF94B2E767F6F
        E5544EBE94E01A26EFF9825A2D63FEAA09FF1B805FC6B6192BD890B888D4D26B
        4A1E56CBEF00A18F116F436391D82854CA3A4F162EA58A6F55E227BC41DBE13D
        FFD7A5FF1E00BF0CBBAD8C0B7B8F93793E853B59B7292DF2BEF134F81B29175E
        9EF05AD13CF27403E5EDE4DF35FE0D81ABD7DBF742330A0000000049454E44AE
        426082}
      Stretch = True
    end
    object rbFiltroTipoMov: TRadioGroup
      Left = 257
      Top = 133
      Width = 273
      Height = 50
      Caption = 'Filtro por tipo'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Dep'#243'sito'
        'Retirada')
      ParentFont = False
      TabOrder = 0
    end
    object rbFiltroUsuario: TRadioGroup
      Left = 10
      Top = 133
      Width = 217
      Height = 50
      Caption = 'Filtro por usu'#225'rio'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Este usu'#225'rio')
      ParentFont = False
      TabOrder = 1
    end
    object dtDataInicio: TDateTimePicker
      Left = 10
      Top = 104
      Width = 103
      Height = 24
      Date = 44880.000000000000000000
      Time = 0.686357164355285900
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dtDataFim: TDateTimePicker
      Left = 161
      Top = 104
      Width = 104
      Height = 24
      Date = 44880.000000000000000000
      Time = 0.686357164355285900
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object pnPesquisar: TPanel
      Left = 546
      Top = 141
      Width = 150
      Height = 41
      Color = 4227327
      ParentBackground = False
      TabOrder = 4
      object btnPesquisar: TSpeedButton
        Left = 1
        Top = 1
        Width = 148
        Height = 39
        Align = alClient
        Caption = 'Pesquisar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnPesquisarClick
        ExplicitTop = 0
        ExplicitWidth = 128
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 41
      Width = 689
      Height = 2
      BevelOuter = bvNone
      Color = 8453888
      ParentBackground = False
      TabOrder = 5
    end
    object pnSaldo: TPanel
      Left = 472
      Top = 41
      Width = 223
      Height = 41
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Saldo:'
      Color = 8453888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      object Panel3: TPanel
        Left = 70
        Top = 2
        Width = 151
        Height = 37
        BevelOuter = bvNone
        Caption = 'Panel3'
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object lblSaldo: TLabel
          Left = 5
          Top = 4
          Width = 137
          Height = 25
          AutoSize = False
          Caption = 'R$100,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8453888
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object pnSair: TPanel
      Left = 616
      Top = 2
      Width = 80
      Height = 36
      BevelOuter = bvNone
      Color = 7171437
      ParentBackground = False
      TabOrder = 7
      object btnSair: TSpeedButton
        Left = 0
        Top = 0
        Width = 80
        Height = 36
        Align = alClient
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnSairClick
        ExplicitLeft = 56
        ExplicitTop = -24
        ExplicitWidth = 90
        ExplicitHeight = 41
      end
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 485
    Width = 704
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 425
    ExplicitWidth = 688
    object pnDeposito: TPanel
      Left = 8
      Top = 6
      Width = 130
      Height = 36
      BevelOuter = bvNone
      Color = 8453888
      ParentBackground = False
      TabOrder = 0
      object btnDeposito: TSpeedButton
        Left = 0
        Top = 0
        Width = 130
        Height = 36
        Align = alClient
        Caption = 'Dep'#243'sito'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnDepositoClick
        OnMouseEnter = btnDepositoMouseEnter
        OnMouseLeave = btnDepositoMouseLeave
        ExplicitLeft = 64
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnRetirada: TPanel
      Left = 171
      Top = 6
      Width = 130
      Height = 36
      BevelOuter = bvNone
      Color = 5460991
      ParentBackground = False
      TabOrder = 1
      object btnRetirada: TSpeedButton
        Left = 0
        Top = 0
        Width = 130
        Height = 36
        Align = alClient
        Caption = 'Retirada'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnRetiradaClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnLogout: TPanel
      Left = 544
      Top = 6
      Width = 131
      Height = 36
      BevelOuter = bvNone
      Color = 7171437
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object btnLogout: TSpeedButton
        Left = 0
        Top = 0
        Width = 131
        Height = 36
        Align = alClient
        Caption = 'Trocar Usu'#225'rio'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Layout = blGlyphRight
        ParentFont = False
        OnClick = btnLogoutClick
        ExplicitLeft = 16
        ExplicitWidth = 169
        ExplicitHeight = 41
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 541
    Width = 704
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = -1
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 502
    ExplicitWidth = 688
    object lblUsuario: TLabel
      Left = 6
      Top = 2
      Width = 347
      Height = 20
      AutoSize = False
      Caption = 'lblUsuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDataHora: TLabel
      Left = 552
      Top = 3
      Width = 129
      Height = 17
      AutoSize = False
      Caption = '16/11/2022 - 17:41'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object dsMovimentacao: TDataSource
    AutoEdit = False
    DataSet = qryMov
    Left = 640
    Top = 232
  end
  object qryMov: TFDQuery
    Connection = dm.Conexao
    SQL.Strings = (
      'SELECT'
      '    M.id,'
      '     CASE M.tp_moviment'
      '     WHEN 1 then '#39'Deposito'#39
      '     WHEN 2 then '#39'Retirada'#39
      '     WHEN 3 then '#39'Sobra'#39
      '    end as tp_moviment ,'
      '    M.motive,'
      '    M."DATE_MOVIMENTS",'
      '    M."VALUE_MOVIMENTS",'
      '    M.id_user,'
      '    U.name'
      'FROM'
      '    MOVIMENTS M'
      'INNER JOIN'
      '  USERS U'
      'ON M.id_user = U.id_user'
      'ORDER BY ID DESC')
    Left = 656
    Top = 88
    object qryMovID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMovTP_MOVIMENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TP_MOVIMENT'
      Origin = 'TP_MOVIMENT'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object qryMovMOTIVE: TStringField
      FieldName = 'MOTIVE'
      Origin = 'MOTIVE'
      Size = 250
    end
    object qryMovDATE_MOVIMENTS: TDateField
      FieldName = 'DATE_MOVIMENTS'
      Origin = 'DATE_MOVIMENTS'
    end
    object qryMovVALUE_MOVIMENTS: TSingleField
      FieldName = 'VALUE_MOVIMENTS'
      Origin = 'VALUE_MOVIMENTS'
      currency = True
    end
    object qryMovID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
      Required = True
    end
    object qryMovNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object qrySaldo: TFDQuery
    Connection = dm.Conexao
    SQL.Strings = (
      'SELECT * FROM CONTA')
    Left = 640
    Top = 312
    object qrySaldoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySaldoSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
end
