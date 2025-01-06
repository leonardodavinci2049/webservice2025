-- CreateTable
CREATE TABLE `tbl_bot_action` (
    `ID_ACTION` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_TIMER` INTEGER NULL,
    `ID_TAREFA` INTEGER NULL,
    `ACTION_NAME` VARCHAR(200) NULL,
    `VALOR` VARCHAR(50) NULL,
    `DT_INICIO` DATETIME(0) NULL,
    `DT_TERMINO` DATETIME(0) NULL,
    `DT_CADASTRO` DATETIME(0) NULL,

    PRIMARY KEY (`ID_ACTION`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_bot_tasks` (
    `ID_TASK` INTEGER NOT NULL AUTO_INCREMENT,
    `TASK` VARCHAR(100) NULL,
    `INATIVO` SMALLINT NULL DEFAULT 0,
    `HORA` INTEGER NULL DEFAULT 0,
    `MINUTO` INTEGER NULL DEFAULT 0,
    `INTERVALO_HORA` INTEGER NULL,
    `VALUE_INT` INTEGER NULL DEFAULT 0,
    `VALUE_STR` VARCHAR(500) NULL,
    `PATH_FILE_ORIGEM` VARCHAR(200) NULL,
    `PATH_FILE_DESTINO` VARCHAR(200) NULL,
    `PARAMETRO1` VARCHAR(500) NULL,
    `PARAMETRO2` INTEGER NULL,
    `PARAMETRO3` VARCHAR(500) NULL,
    `PARAMETRO4` INTEGER NULL,
    `FLAG_ANDAMENTO` SMALLINT NULL DEFAULT 0,
    `TAREFA_ANTERIOR` SMALLINT NULL,
    `DT_INICIO_EXECUCAO` DATETIME(0) NULL,
    `DT_FINAL_EXECUCAO` DATETIME(0) NULL,
    `DT_TIMER` DATETIME(0) NULL,
    `DT_EXECUCAO` DATE NULL,
    `DT_CADASTRO` DATETIME(0) NULL,

    PRIMARY KEY (`ID_TASK`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_email_system` (
    `ID_SYSTEM` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_DEPARTAMENTO` INTEGER NULL DEFAULT 1,
    `ID_USUARIO` INTEGER NULL DEFAULT 0,
    `NOME_DA_CONTA` VARCHAR(60) NULL DEFAULT 'Conta Comercial',
    `NOME_REMETENTE` VARCHAR(100) NULL DEFAULT 'Email Comercial',
    `EMAIL_REMETENTE` VARCHAR(150) NULL DEFAULT 'comercial@email.com.br',
    `MENSAGEM_CCO` VARCHAR(150) NULL,
    `USUARIO` VARCHAR(50) NULL DEFAULT 'comercial@email.com.br',
    `SENHA` VARCHAR(50) NULL DEFAULT '19372846',
    `SERVIDOR_POP` VARCHAR(100) NULL DEFAULT 'pop.gmail.com',
    `SERVIDOR_SMTP` VARCHAR(150) NULL DEFAULT 'smtp.gmail.com',
    `PORTA_POP3` INTEGER NULL DEFAULT 995,
    `PORTA_PARA_TLS` INTEGER NULL DEFAULT 587,
    `PORTA_PARA_SSL` INTEGER NULL DEFAULT 465,
    `PORTA_SMTP` INTEGER NULL DEFAULT 587,
    `TIPO_EMAIL` SMALLINT NULL DEFAULT 1,
    `USAR_AUTENTICACAO` SMALLINT NULL DEFAULT 1,
    `TIPO_SSL` SMALLINT NULL DEFAULT 1,
    `USAR_SSL` SMALLINT NULL DEFAULT 1,
    `EMAIL_FORMULARIO` VARCHAR(150) NULL,
    `DESATIVAR` SMALLINT NOT NULL DEFAULT 0,
    `ASSINATURA` LONGTEXT NULL,

    PRIMARY KEY (`ID_SYSTEM`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_email_template` (
    `ID_TEMPLATE` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_SYSTEM_CLIENTE` INTEGER NULL DEFAULT 5,
    `ID_LOJA` INTEGER NULL DEFAULT 1,
    `ID_USUARIO` INTEGER NULL DEFAULT 1,
    `ID_DEPARTAMENTO` INTEGER NULL DEFAULT 1,
    `ID_TIPO_REMETENTE` INTEGER NULL DEFAULT 0,
    `NOME_TEMPLATE` VARCHAR(150) NULL,
    `ID_CATEGORIA` INTEGER NULL,
    `NOMEDOREMETENTE` VARCHAR(50) NULL,
    `EMAILDOREMETENTE` VARCHAR(150) NULL,
    `SENHA_DO_EMAIL` VARCHAR(50) NULL,
    `ENVIAR_COPIA_PARA` VARCHAR(150) NULL,
    `FORMATO_TEXTO` SMALLINT NULL,
    `ASSUNTO` VARCHAR(150) NULL,
    `TEMPLATE` LONGTEXT NULL,
    `ANEXO` VARCHAR(200) NULL,
    `DESATIVAR` SMALLINT NOT NULL DEFAULT 0,
    `DATADOCADASTRO` DATETIME(0) NULL,

    PRIMARY KEY (`ID_TEMPLATE`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_email_usuario` (
    `ID_EMAIL` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_SYSTEM` INTEGER NOT NULL DEFAULT 0,
    `ID_DEPARTAMENTO` INTEGER NULL DEFAULT 1,
    `ID_USUARIO` INTEGER NULL DEFAULT 0,
    `NOME_DA_CONTA` VARCHAR(60) NULL DEFAULT 'Conta Comercial',
    `NOME_REMETENTE` VARCHAR(100) NULL DEFAULT 'Email Comercial',
    `EMAIL_REMETENTE` VARCHAR(150) NULL DEFAULT 'comercial@email.com.br',
    `MENSAGEM_CCO` VARCHAR(150) NULL,
    `USUARIO` VARCHAR(50) NULL DEFAULT 'comercial@email.com.br',
    `SENHA` VARCHAR(50) NULL DEFAULT '19372846',
    `SERVIDOR_POP` VARCHAR(100) NULL DEFAULT 'pop.gmail.com',
    `SERVIDOR_SMTP` VARCHAR(150) NULL DEFAULT 'smtp.gmail.com',
    `PORTA_POP3` INTEGER NULL DEFAULT 995,
    `PORTA_PARA_TLS` INTEGER NULL DEFAULT 587,
    `PORTA_PARA_SSL` INTEGER NULL DEFAULT 465,
    `PORTA_SMTP` INTEGER NULL DEFAULT 587,
    `TIPO_EMAIL` SMALLINT NULL DEFAULT 1,
    `USAR_AUTENTICACAO` SMALLINT NULL DEFAULT 1,
    `TIPO_SSL` SMALLINT NULL DEFAULT 1,
    `USAR_SSL` SMALLINT NULL DEFAULT 1,
    `EMAIL_FORMULARIO` VARCHAR(150) NULL,
    `DESATIVAR` SMALLINT NOT NULL DEFAULT 1,
    `ASSINATURA` LONGTEXT NULL,

    PRIMARY KEY (`ID_EMAIL`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_email_variables` (
    `ID_SYSTEM` INTEGER NOT NULL AUTO_INCREMENT,
    `COMPANY_NAME` VARCHAR(200) NULL,
    `COMPANY_ENDERECO` LONGTEXT NULL,
    `COMPANY_HORARIOS` LONGTEXT NULL,
    `COMPANY_DOMAIN` VARCHAR(200) NULL,
    `COMPANY_URL_AREA_CLIENT` VARCHAR(300) NULL,
    `COMPANY_URL_LOGO` VARCHAR(300) NULL,
    `COMPANY_ASSINATURA` LONGTEXT NULL,
    `COMPANY_TELEFONE_COMERCIAL` VARCHAR(200) NULL,
    `COMPANY_EMAIL_COMERCIAL` VARCHAR(200) NULL,
    `COMPANY_REGIAO_ATENDIMENTO` VARCHAR(500) NULL,
    `COMPANY_PRODUTOS_DESCRICAO` LONGTEXT NULL,
    `COMPANY_PRODUTOS_MERCADO` LONGTEXT NULL,
    `TEMPLATE_HTML_HEADER` LONGTEXT NULL,
    `TEMPLATE_CSS_CODIGO` LONGTEXT NULL,
    `TEMPLATE_HTML_FOOTER` LONGTEXT NULL,

    PRIMARY KEY (`ID_SYSTEM`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_loja` (
    `ID_LOJA` INTEGER NOT NULL,
    `ID_SYSTEM` INTEGER NOT NULL,
    `ID_USUARIO` INTEGER NULL DEFAULT 1,
    `ID_DEPARTAMENTO` INTEGER NULL DEFAULT 1,
    `NOME` VARCHAR(300) NULL,
    `IP_WEBSERVICE` VARCHAR(100) NULL DEFAULT '191.252.58.120',
    `PORT_WEBSERVICE` INTEGER NULL DEFAULT 8885,
    `DOMINIO` VARCHAR(100) NULL,
    `WOO_KEY` VARCHAR(100) NULL,
    `WOO_SECRET` VARCHAR(100) NULL,
    `WEBSITE` VARCHAR(300) NULL,
    `PATH_LOGO01` VARCHAR(300) NULL,
    `PATH_IMAGEM01` VARCHAR(300) NULL,
    `CABECALHO_IMPRESSAO` LONGTEXT NULL,
    `FLAG_REVENDA` SMALLINT NULL DEFAULT 0,
    `INATIVO` SMALLINT NULL DEFAULT 0,
    `DT_CADASTRO` DATETIME(0) NULL,

    PRIMARY KEY (`ID_LOJA`, `ID_SYSTEM`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_preposicao` (
    `ID_PREPOSICAO` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_SYSTEM_CLIENTE` INTEGER NULL DEFAULT 0,
    `PREPOSICAO` VARCHAR(20) NULL,
    `PRIORIDADE` INTEGER NULL,
    `DT_CADASTRO` DATETIME(0) NULL,

    PRIMARY KEY (`ID_PREPOSICAO`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_status` (
    `ID_STATUS` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_SYSTEM` INTEGER NULL,
    `STATUS` VARCHAR(300) NULL,
    `NOTAS` LONGTEXT NULL,
    `FLAG` SMALLINT NULL,
    `DT_UPDATE` DATE NULL,
    `DT_CADASTRO` DATETIME(0) NULL,

    PRIMARY KEY (`ID_STATUS`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_cfg_cliente` (
    `ID_SYSTEM` INTEGER NOT NULL AUTO_INCREMENT,
    `PASSKEY` VARCHAR(100) NULL,
    `ID_TEMPLATE` INTEGER NULL DEFAULT 0,
    `ID_TIPO_CLIENTE` INTEGER NULL DEFAULT 1,
    `ID_DATABASE` INTEGER NULL DEFAULT 3,
    `NOME_CLIENTE` VARCHAR(200) NULL,
    `SERVER_IP` VARCHAR(100) NULL,
    `PORTA_TCP` INTEGER NULL,
    `PORTA_HTTP` INTEGER NULL,
    `SERVER_USUARIO` VARCHAR(100) NULL,
    `SERVER_PASSWORD` VARCHAR(100) NULL,
    `FRMPRINCIPAL_TITLE` VARCHAR(300) NULL,
    `FRMPRINCIPAL_ABOUT` LONGTEXT NULL,
    `FRMPRINCIPAL_LOGO` VARCHAR(300) NULL,
    `FRMPRINCIPAL_EMPRESA` VARCHAR(200) NULL,
    `FRMPRINCIPAL_WALLPAPER` VARCHAR(300) NULL,
    `FRMPRINCIPAL_EMPRESARIAL` LONGTEXT NULL,
    `AREADOCLIENTE` VARCHAR(150) NULL,
    `DOMINIO` VARCHAR(100) NULL,
    `DOMINIO_ATACADO` VARCHAR(100) NULL,
    `DOMINIO_VAREJO` VARCHAR(100) NULL,
    `DOMAIN_NAME` VARCHAR(100) NULL,
    `ECOMMERCE_ATACADO` VARCHAR(500) NULL,
    `ECOMMERCE_VAREJO` VARCHAR(500) NULL,
    `WOO_KEY` VARCHAR(100) NULL,
    `WOO_SECRET` VARCHAR(100) NULL,
    `LOCAL_IMAGENS_PRODUTO` VARCHAR(500) NULL,
    `LOCAL_IMAGENS_PESSOAS` VARCHAR(500) NULL,
    `PASTA_IMG_PRODUCTS` VARCHAR(200) NULL,
    `PASTA_IMG_CUSTOMERS` VARCHAR(200) NULL,
    `PATH_ANEXOS_PRODUTO_WINDOWS` VARCHAR(500) NULL,
    `PATH_ANEXOS_CLIENTE_WINDOWS` VARCHAR(500) NULL,
    `PATH_ANEXOS_PEDIDO_WINDOWS` VARCHAR(500) NULL,
    `PATH_ANEXOS_DIVERSOS_WINDOWS` VARCHAR(500) NULL,
    `LOCAL_ANEXOS_CLIENTE` VARCHAR(300) NULL,
    `LOCAL_ANEXOS_PRODUTO` VARCHAR(300) NULL,
    `LOCAL_ANEXOS_PEDIDO` VARCHAR(300) NULL,
    `LOCAL_ANEXOS_DIVERSOS` VARCHAR(45) NULL,
    `LOGO1` VARCHAR(200) NULL,
    `LOGO2` VARCHAR(200) NULL,
    `LOGO3` VARCHAR(200) NULL,
    `EMAIL_FOOTER_CONTENT` LONGTEXT NULL,
    `MYSQL_DBHOST` VARCHAR(100) NULL,
    `MYSQL_DBPORT` INTEGER NULL DEFAULT 0,
    `MYSQL_DBNAME` VARCHAR(100) NULL,
    `MYSQL_DBUSER` VARCHAR(100) NULL,
    `MYSQL_DBPASSWORD` VARCHAR(100) NULL,
    `DESATIVAR` INTEGER NOT NULL DEFAULT 0,
    `ANOTACOES_GERAIS` LONGTEXT NULL,
    `DT_EXPORTE` DATETIME(0) NULL,
    `DT_UPDATE` DATETIME(0) NULL,
    `DATABASE_PATH` VARCHAR(100) NULL,
    `DATABASE_USER` VARCHAR(100) NULL,
    `DATABASE_PASSWORD` VARCHAR(100) NULL,
    `DATABASE_SERVER` VARCHAR(100) NULL,
    `PATH_IMG_PRODUCTS_WINDOWS` VARCHAR(100) NULL,
    `PATH_IMG_CUSTOMERS_WINDOWS` VARCHAR(100) NULL,

    PRIMARY KEY (`ID_SYSTEM`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_cfg_geral` (
    `ID_SYSTEM_CFG` INTEGER NOT NULL AUTO_INCREMENT,
    `CHAVE` VARCHAR(500) NULL,
    `VALOR` VARCHAR(1000) NULL,
    `NOTAS` LONGTEXT NULL,
    `INATIVO` INTEGER NULL DEFAULT 0,
    `DT_EXPORTE` DATETIME(0) NULL,
    `DT_UPDATE` DATETIME(0) NULL,

    PRIMARY KEY (`ID_SYSTEM_CFG`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_cliente` (
    `ID_SYSTEM` INTEGER NOT NULL,
    `ID_TEMPLATE` INTEGER NULL DEFAULT 0,
    `ID_IMPRESSORA` INTEGER NULL DEFAULT 0,
    `NOME_EMPRESA` VARCHAR(200) NULL,
    `RAZAO_SOCIAL` VARCHAR(300) NULL,
    `URL_DA_LOGO` VARCHAR(300) NULL,
    `CNPJ1` VARCHAR(100) NULL,
    `CNPJ2` VARCHAR(100) NULL,
    `INSC_EST1` VARCHAR(100) NULL,
    `INSC_EST2` VARCHAR(100) NULL,
    `INSC_MUNICIPAL1` VARCHAR(100) NULL,
    `INSC_MUNICIPAL2` VARCHAR(100) NULL,
    `COD_MUNICIPIO` VARCHAR(100) NULL,
    `EMAIL_COMERCIAL` VARCHAR(130) NULL,
    `EMAIL_VENDAS` VARCHAR(144) NULL,
    `EMAIL_CADASTRO` VARCHAR(144) NULL,
    `EMAIL_FALECONOSCO` VARCHAR(144) NULL,
    `EMAIL_ADMINISTRATIVO` VARCHAR(144) NULL,
    `TELEFONE_COMERCIAL` VARCHAR(100) NULL,
    `FONE1` VARCHAR(100) NULL,
    `FONE2` VARCHAR(100) NULL,
    `FONE3` VARCHAR(100) NULL,
    `EMAIL1` VARCHAR(144) NULL,
    `EMAIL2` VARCHAR(144) NULL,
    `EMAIL3` VARCHAR(144) NULL,
    `CEP` VARCHAR(100) NULL,
    `ENDERECO` VARCHAR(200) NULL,
    `ENDERECO_NUMERO` VARCHAR(50) NULL,
    `COMPLEMENTO` VARCHAR(200) NULL,
    `BAIRRO` VARCHAR(100) NULL,
    `CIDADE` VARCHAR(100) NULL,
    `UF` VARCHAR(50) NULL,
    `REGIAO_PAIS` VARCHAR(50) NULL,
    `PAIS` VARCHAR(50) NULL,
    `ENDERECO_COMPLETO_02` LONGTEXT NULL,
    `ENDERECO_COMPLETO_01` LONGTEXT NULL,
    `DOMAIN_NAME` VARCHAR(100) NULL,
    `FACEBOOK` VARCHAR(200) NULL,
    `TWITTER` VARCHAR(100) NULL,
    `SKYPE` VARCHAR(100) NULL,
    `WHATSAPP1` VARCHAR(100) NULL,
    `WHATSAPP2` VARCHAR(100) NULL,
    `WHATSAPP3` VARCHAR(100) NULL,
    `PRN1_COL1` INTEGER NULL DEFAULT 0,
    `PRN1_COL2` INTEGER NULL DEFAULT 0,
    `PRN1_COL3` INTEGER NULL DEFAULT 0,
    `PRN2_COL1` INTEGER NULL DEFAULT 0,
    `PRN2_COL2` INTEGER NULL DEFAULT 0,
    `PRN2_COL3` INTEGER NULL DEFAULT 0,
    `PRN_PDV` VARCHAR(100) NULL,
    `PRN_FISCAL` VARCHAR(100) NULL,
    `PRN_CODBARRAS1` VARCHAR(100) NULL,
    `PRN_CODBARRAS2` VARCHAR(100) NULL,
    `PRN1_CODSTR` VARCHAR(200) NULL,
    `AREADOCLIENTE` VARCHAR(100) NULL,
    `ANOTACOES_IMPRESSORAS` LONGTEXT NULL,
    `ANOTACOES_CLIENTE` LONGTEXT NULL,
    `DT_EXPORTE` DATETIME(0) NULL,
    `DT_UPDATE` DATETIME(0) NULL,

    PRIMARY KEY (`ID_SYSTEM`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_config` (
    `ID_CONFIG` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_WEBSITE_START` INTEGER NULL,
    `ID_USUARIO` INTEGER NULL,
    `QT_MIN_VERSAO` INTEGER NULL DEFAULT 5,
    `ID_SYSTEM_CLIENTE` INTEGER NULL,
    `DT_UPDATE` DATETIME(0) NULL,
    `DT_EXPORTE` DATETIME(0) NULL,

    PRIMARY KEY (`ID_CONFIG`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_log_erro` (
    `ID_LOG_ERRO` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_TIPO` INTEGER NULL,
    `ID_DEPARTAMENTO` INTEGER NULL DEFAULT 1,
    `ID_USUARIO_SYSTEM` INTEGER NULL,
    `ID_SYSTEM_CFG_CLIENTE` INTEGER NULL,
    `ID_DATABASE` INTEGER NULL DEFAULT 0,
    `ID_WEBSERVICE` INTEGER NULL DEFAULT 0,
    `IP` VARCHAR(100) NULL,
    `VERSAO` VARCHAR(100) NULL,
    `PC_NAME` VARCHAR(100) NULL,
    `USUARIO_WINDOWS` VARCHAR(100) NULL,
    `ERRO` VARCHAR(2000) NULL,
    `DETALHE` LONGTEXT NULL,
    `DT_CADASTRO` DATETIME(0) NULL,

    PRIMARY KEY (`ID_LOG_ERRO`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_log_login` (
    `ID_LOG_LOGIN` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_GENERATED` BIGINT NULL DEFAULT 0,
    `ID_TIPO_LOGIN` INTEGER NULL DEFAULT 0,
    `ID_LOJA` INTEGER NULL DEFAULT 0,
    `ID_PESSOA` INTEGER NULL,
    `ID_USUARIO_SYSTEM` INTEGER NULL,
    `ID_SYSTEM_CFG_CLIENTE` INTEGER NULL,
    `ID_LOCATION` INTEGER NULL,
    `SESSAO` VARCHAR(100) NULL,
    `IP` VARCHAR(100) NULL,
    `VERSAO` VARCHAR(100) NULL,
    `RESOLUCAO` VARCHAR(100) NULL,
    `PC_NAME` VARCHAR(100) NULL,
    `USUARIO_PC` VARCHAR(100) NULL,
    `INFO1` VARCHAR(500) NULL,
    `INFO2` VARCHAR(500) NULL,
    `EMAIL` VARCHAR(200) NULL,
    `ID_FACEBOOK` VARCHAR(100) NULL,
    `ID_GOOGLE` VARCHAR(100) NULL,
    `ID_TWITTER` VARCHAR(100) NULL,
    `ID_LINKEDIN` VARCHAR(100) NULL,
    `DT_LOGIN` DATETIME(0) NULL,
    `DT_LOGOFF` DATETIME(0) NULL,
    `DATADOCADASTRO` DATETIME(0) NULL,
    `DT_EXPORTE` DATETIME(0) NULL,
    `DT_UPDATE` DATETIME(0) NULL,

    INDEX `tbl_system_log_login_DT_LOGIN_IDX`(`DT_LOGIN`),
    INDEX `tbl_system_log_login_DT_LOGOFF_IDX`(`DT_LOGOFF`),
    INDEX `tbl_system_log_login_ID_GENERATED_IDX`(`ID_GENERATED`),
    INDEX `tbl_system_log_login_ID_SYSTEM_CFG_CLIENTE_IDX`(`ID_SYSTEM_CFG_CLIENTE`),
    INDEX `tbl_system_log_login_ID_USUARIO_SYSTEM_IDX`(`ID_USUARIO_SYSTEM`),
    PRIMARY KEY (`ID_LOG_LOGIN`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_login_cbb` (
    `ID_LOGIN_CBB` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_SYSTEM` INTEGER NULL DEFAULT 0,
    `ID_LOJA` INTEGER NULL DEFAULT 0,
    `ID_DEPARTAMENTO` INTEGER NULL DEFAULT 0,
    `ID_USUARIO` INTEGER NULL DEFAULT 0,
    `PATH_IMG` VARCHAR(500) NULL,
    `NOME` VARCHAR(150) NULL,
    `LOGIN` VARCHAR(150) NULL,
    `SENHA` VARCHAR(150) NULL,
    `PC_NAME` VARCHAR(150) NULL,
    `PC_USUARIO` VARCHAR(150) NULL,
    `DT_CADASTRO` DATETIME(0) NULL,
    `DT_LOGIN` DATETIME(0) NULL,
    `DT_EXPORTE` DATETIME(0) NULL,
    `DT_UPDATE` DATETIME(0) NULL,

    PRIMARY KEY (`ID_LOGIN_CBB`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_parametro` (
    `ID_SYSTEM` INTEGER NOT NULL,
    `PARAMETRO_01` VARCHAR(200) NULL,
    `PARAMETRO_02` VARCHAR(200) NULL,
    `PARAMETRO_03` VARCHAR(200) NULL,
    `PARAMETRO_04` VARCHAR(200) NULL,
    `PARAMETRO_05` VARCHAR(200) NULL,
    `PARAMETRO_06` VARCHAR(200) NULL,
    `PARAMETRO_07` VARCHAR(200) NULL,
    `PARAMETRO_08` VARCHAR(200) NULL,
    `PARAMETRO_09` VARCHAR(200) NULL,
    `PARAMETRO_10` VARCHAR(200) NULL,
    `PARAMETRO_11` VARCHAR(200) NULL,
    `PARAMETRO_12` VARCHAR(200) NULL,
    `PARAMETRO_13` VARCHAR(200) NULL,
    `PARAMETRO_14` VARCHAR(200) NULL,
    `PARAMETRO_15` VARCHAR(200) NULL,
    `PARAMETRO_16` VARCHAR(200) NULL,
    `PARAMETRO_17` VARCHAR(200) NULL,
    `PARAMETRO_18` VARCHAR(200) NULL,
    `PARAMETRO_19` VARCHAR(200) NULL,
    `PARAMETRO_20` VARCHAR(200) NULL,
    `JSON_CONFIG` LONGTEXT NULL,
    `ANOTACOES_PARAMETROS` LONGTEXT NULL,
    `DT_EXPORTE` DATETIME(0) NULL,
    `DT_UPDATE` DATETIME(0) NULL,

    PRIMARY KEY (`ID_SYSTEM`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_usuario` (
    `ID_USUARIO_SYSTEM` INTEGER NOT NULL AUTO_INCREMENT,
    `ID_PESSOA` INTEGER NULL,
    `LOGIN` VARCHAR(60) NULL,
    `ID_SYSTEM_CFG_CLIENTE` INTEGER NULL,
    `ID_CATEGORIA` INTEGER NULL,
    `ID_SYSTEM` INTEGER NULL DEFAULT 0,
    `ID_SEGUR_TIPOPERFIL` INTEGER NULL,
    `ID_LOJA` INTEGER NULL DEFAULT 1,
    `ID_TIPO` INTEGER NULL DEFAULT 1,
    `ID_DEPARTAMENTO` INTEGER NULL DEFAULT 1,
    `ID_CARRINHO` INTEGER NULL DEFAULT 0,
    `NOME` VARCHAR(300) NULL,
    `FONE1` VARCHAR(200) NULL,
    `FONE2` VARCHAR(200) NULL,
    `EMAIL_DE_LOGIN` VARCHAR(150) NULL,
    `ID_FACEBOOK` VARCHAR(100) NULL,
    `ID_GOOGLE` VARCHAR(100) NULL,
    `ID_TWITTER` VARCHAR(100) NULL,
    `ID_LINKEDIN` VARCHAR(100) NULL,
    `DATADAALTERACAO` DATETIME(0) NULL,
    `EMAILDERESET` VARCHAR(150) NULL,
    `SENHA` VARCHAR(60) NULL,
    `IMAGEM01` VARCHAR(500) NULL,
    `IMAGEM02` VARCHAR(500) NULL,
    `ACESSOWEBADMIN` SMALLINT NULL,
    `ACESSOWEB` SMALLINT NULL,
    `BLOQUEAR_ACESSO_WEB` SMALLINT NULL DEFAULT 0,
    `ACESSODESK` SMALLINT NULL DEFAULT 0,
    `ACESSO` SMALLINT NULL,
    `NIVEL` SMALLINT NULL,
    `SYSTEMBLOCK` SMALLINT NULL,
    `SYSTEMUSER` SMALLINT NULL,
    `INATIVO` SMALLINT NULL DEFAULT 0,
    `FLAG_CONTROL_HR` SMALLINT NULL DEFAULT 0,
    `FLAG_CONTROL_VERSION` SMALLINT NULL DEFAULT 0,
    `QT_VERSION_PERMITIDA` INTEGER NULL DEFAULT 10,
    `TX_MAX_DESCONTO_ATAC` DECIMAL(18, 2) NULL,
    `TX_MAX_DESCONTO_VARE` DECIMAL(18, 2) NULL,
    `PRINT_INDEX` INTEGER NULL,
    `PRN_TERMICA` VARCHAR(50) NULL DEFAULT '0',
    `PRN_CODBARRAS` VARCHAR(50) NULL,
    `PRN_PADRAO` VARCHAR(50) NULL,
    `PRN_PDV` VARCHAR(100) NULL,
    `PRN_FISCAL` VARCHAR(100) NULL,
    `PRN_CODBARRAS1` VARCHAR(100) NULL,
    `PRN_CODBARRAS2` VARCHAR(100) NULL,
    `CHAVEDERESET` VARCHAR(50) NULL,
    `DATALIMITERESET` DATETIME(0) NULL,
    `REPRESENTANTE` INTEGER NULL,
    `SENHA_VIEW` VARCHAR(100) NULL,
    `IP_NO_CADASTRO` VARCHAR(60) NULL,
    `DATADOCADASTRO` DATETIME(0) NULL,
    `DT_ULT_ACESSO` DATETIME(0) NULL,
    `JSON_CONFIG` LONGTEXT NULL,
    `ANOTACOES` LONGTEXT NULL,
    `DT_EXPORTE` DATETIME(0) NULL,
    `DT_UPDATE` DATETIME(0) NULL,
    `HR_INICIAL` SMALLINT NULL DEFAULT 6,
    `HR_FINAL` SMALLINT NULL DEFAULT 22,
    `FLAG_SEG` SMALLINT NULL DEFAULT 1,
    `FLAG_TER` SMALLINT NULL DEFAULT 1,
    `FLAG_QUA` SMALLINT NULL DEFAULT 1,
    `FLAG_QUI` SMALLINT NULL DEFAULT 1,
    `FLAG_SEX` SMALLINT NULL DEFAULT 1,
    `FLAG_SAB` SMALLINT NULL DEFAULT 1,
    `FLAG_DOM` SMALLINT NULL DEFAULT 1,

    INDEX `tbl_system_usuario_ID_SYSTEM_CFG_CLIENTE_IDX`(`ID_SYSTEM_CFG_CLIENTE`),
    INDEX `tbl_system_usuario_LOGIN_IDX`(`LOGIN`),
    INDEX `tbl_system_usuario_SENHA_IDX`(`SENHA`),
    PRIMARY KEY (`ID_USUARIO_SYSTEM`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_version` (
    `ID_VERSION` INTEGER NOT NULL AUTO_INCREMENT,
    `FILE_NAME_EXE` VARCHAR(100) NULL,
    `FILE_NAME_RAR` VARCHAR(100) NULL,
    `MAJOR_EXE` INTEGER NULL DEFAULT 0,
    `MINOR_EXE` INTEGER NULL DEFAULT 0,
    `RELEASE_EXE` INTEGER NULL DEFAULT 0,
    `BUILD_EXE` INTEGER NULL DEFAULT 0,
    `VERSION_EXE` VARCHAR(100) NULL,
    `SIZE_EXE` BIGINT NULL,
    `MD5_HASH_FILE_EXE` VARCHAR(100) NULL,
    `PATH_FILE_RAR_SERVER` VARCHAR(300) NULL,
    `LINK_RAR_DOWNLOAD` VARCHAR(300) NULL,
    `ANOTACOES` LONGTEXT NULL,
    `DT_CADASTRO` DATETIME(0) NULL,
    `DT_EXPORTE` DATETIME(0) NULL,
    `DT_UPDATE` DATETIME(0) NULL,

    PRIMARY KEY (`ID_VERSION`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_system_website` (
    `ID_WEBSITE` INTEGER NOT NULL AUTO_INCREMENT,
    `INATIVO` INTEGER NULL DEFAULT 0,
    `NOME` VARCHAR(300) NULL,
    `ID_SYSTEM_CLIENTE` INTEGER NULL DEFAULT 0,
    `ID_TIPO_COMMERCE` INTEGER NULL DEFAULT 1,
    `PRODUTO_TIPO` VARCHAR(300) NULL,
    `ID_LOJA` INTEGER NULL DEFAULT 1,
    `DB_HOST` VARCHAR(100) NULL,
    `DB_NAME` VARCHAR(100) NULL,
    `DB_USER` VARCHAR(100) NULL,
    `DB_PASSWORD` VARCHAR(100) NULL,
    `WOO_KEY` VARCHAR(300) NULL,
    `WOO_SECRET` VARCHAR(300) NULL,
    `ID_LOCATION` INTEGER NULL,
    `FLAG_ESTOQUE_OFF` INTEGER NULL DEFAULT 1,
    `WEBSERVICE_NOME` VARCHAR(100) NULL,
    `WEBSERVICE_IP` VARCHAR(100) NULL,
    `WEBSERVICE_PORTA` INTEGER NULL DEFAULT 0,
    `DOMINIO` VARCHAR(200) NULL,
    `WEBSITE` VARCHAR(200) NULL,
    `PATH_LOGO` VARCHAR(500) NULL,
    `LOGIN_WEBMASTER` VARCHAR(100) NULL,
    `SENHA_WEBMASTER` VARCHAR(100) NULL,
    `EMAIL_WEBMASTER` VARCHAR(150) NULL,
    `TX_LOC_ATACADO` DECIMAL(18, 6) NULL DEFAULT 0.000000,
    `FLAG_TX_WEBSITE_VAREJO` SMALLINT NULL DEFAULT 0,
    `ID_USUARIO` INTEGER NULL DEFAULT 1,
    `ID_DEPARTAMENTO` INTEGER NULL DEFAULT 1,
    `TX_LOC_VAREJO` DECIMAL(18, 6) NULL DEFAULT 0.000000,
    `TX_WEBSITE_VAREJO` DECIMAL(18, 9) NULL DEFAULT 0.000000000,
    `ID_VENDEDOR` INTEGER NULL DEFAULT 0,
    `FLAG_EXPORTE` INTEGER NULL DEFAULT 0,
    `FLAG_LINK_IMAGEM` INTEGER NULL DEFAULT 0,
    `FLAG_LINK_PAGE` INTEGER NULL DEFAULT 0,
    `ACCESSKEY` VARCHAR(100) NULL,
    `JSON_CONFIG` LONGTEXT NULL,
    `DT_CADASTRO` DATETIME(0) NULL,

    PRIMARY KEY (`ID_WEBSITE`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

