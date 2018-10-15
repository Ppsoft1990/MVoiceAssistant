.class public Lcom/cmcc/migusso/auth/common/HostConfig;
.super Ljava/lang/Object;
.source "HostConfig.java"


# static fields
.field public static final CMCC_SSO_VERION:Ljava/lang/String; = "UnionSDK-20AndriodV3.3.3"

.field private static DATA_SMS_DESTINATION_ADDRESS:Ljava/lang/String; = null

.field private static DATA_SMS_DESTINATION_ADDRESS_OTHER:Ljava/lang/String; = null

.field private static final DATA_SMS_DESTINATION_PORT:S = 0x7d0s

.field private static HOST_IP:Ljava/lang/String; = null

.field private static HOST_WEB_IP:Ljava/lang/String; = null

.field private static LOGBP_HOST_IP:Ljava/lang/String; = null

.field public static final SSO_RCFLAG:Ljava/lang/String; = "1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "https://passport.migu.cn:8443"

    sput-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    const-string/jumbo v0, "106581061"

    sput-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->DATA_SMS_DESTINATION_ADDRESS:Ljava/lang/String;

    const-string/jumbo v0, "106905298010105"

    sput-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->DATA_SMS_DESTINATION_ADDRESS_OTHER:Ljava/lang/String;

    const-string/jumbo v0, "https://passport.migu.cn"

    sput-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_WEB_IP:Ljava/lang/String;

    const-string/jumbo v0, "https://112.17.9.81:8443/"

    sput-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->LOGBP_HOST_IP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppRequestPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/client/ckRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/client/authRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCmccDataSmsDest()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->DATA_SMS_DESTINATION_ADDRESS:Ljava/lang/String;

    return-object v0
.end method

.method public static getCtccDataSmsDest()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "1069053980"

    return-object v0
.end method

.method public static getDataSmsPort()S
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public static getHostAdd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostLogBpAdd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->LOGBP_HOST_IP:Ljava/lang/String;

    return-object v0
.end method

.method public static getHsPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/client/hsRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKsQueryPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/client/synLifeTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlineAuthPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://passport.migu.cn/client/authRequest"

    return-object v0
.end method

.method public static getOtherDataSmsDest()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->DATA_SMS_DESTINATION_ADDRESS_OTHER:Ljava/lang/String;

    return-object v0
.end method

.method public static getProtocolUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_WEB_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/portal/appprotocol?sourceid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQRCPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/client/funcManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserManagePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/client/userManage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAuthPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/migusso/auth/common/HostConfig;->HOST_IP:Ljava/lang/String;

    sput-object p1, Lcom/cmcc/migusso/auth/common/HostConfig;->DATA_SMS_DESTINATION_ADDRESS:Ljava/lang/String;

    return-void
.end method
