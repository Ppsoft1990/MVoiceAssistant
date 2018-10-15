.class public Lcom/iflytek/viafly/util/TestHelper;
.super Ljava/lang/Object;
.source "TestHelper.java"


# static fields
.field private static final PRO_ADDRESS:Ljava/lang/String; = "ADDRESS"

.field private static final PRO_LOG:Ljava/lang/String; = "LOGFLAG"

.field private static final PRO_MSC:Ljava/lang/String; = "MSC"

.field private static final PRO_STAT:Ljava/lang/String; = "STAT"

.field private static final PRO_VAD:Ljava/lang/String; = "VAD"

.field private static final TAG:Ljava/lang/String; = "TestHelper"

.field private static mInstance:Lcom/iflytek/viafly/util/TestHelper;


# instance fields
.field private final INI_FILE:Ljava/lang/String;

.field private mCacheSessionId:Ljava/lang/String;

.field private mIniFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/util/TestHelper;->mInstance:Lcom/iflytek/viafly/util/TestHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "speech.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/util/TestHelper;->INI_FILE:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/util/TestHelper;->init()V

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/iflytek/viafly/util/TestHelper;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/iflytek/viafly/util/TestHelper;->mInstance:Lcom/iflytek/viafly/util/TestHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/iflytek/viafly/util/TestHelper;

    invoke-direct {v0}, Lcom/iflytek/viafly/util/TestHelper;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/util/TestHelper;->mInstance:Lcom/iflytek/viafly/util/TestHelper;

    .line 42
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/util/TestHelper;->mInstance:Lcom/iflytek/viafly/util/TestHelper;

    return-object v0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "properties_key"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/util/TestHelper;->mIniFile:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/util/TestHelper;->mIniFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/util/TestHelper;->mIniFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 50
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/iflytek/viafly/util/TestHelper;->INI_FILE:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "fp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    const-string/jumbo v4, "TestHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileNotFound  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/util/TestHelper;->INI_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v2, 0x0

    .line 57
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Lazm;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/util/TestHelper;->mIniFile:Ljava/util/Map;

    .line 59
    const-string/jumbo v4, "TestHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init file ok "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/util/TestHelper;->INI_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 67
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    iput-object v7, p0, Lcom/iflytek/viafly/util/TestHelper;->mIniFile:Ljava/util/Map;

    .line 63
    const-string/jumbo v4, "TestHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/util/TestHelper;->INI_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    iput-object v7, p0, Lcom/iflytek/viafly/util/TestHelper;->mIniFile:Ljava/util/Map;

    .line 66
    const-string/jumbo v4, "TestHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/util/TestHelper;->INI_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_2

    .line 61
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method public getAdbLogFlag()Z
    .locals 3

    .prologue
    .line 204
    const-string/jumbo v1, "LOGFLAG"

    const-string/jumbo v2, "UPLOAD_ADB_LOG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x1

    .line 208
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddress()Lcom/iflytek/common/lbs/XAddress;
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/iflytek/viafly/util/TestHelper;->mIniFile:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/util/TestHelper;->mIniFile:Ljava/util/Map;

    const-string/jumbo v2, "ADDRESS"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 117
    :cond_1
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    invoke-direct {v0}, Lcom/iflytek/common/lbs/XAddress;-><init>()V

    .line 118
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    const-string/jumbo v1, "ADDRESS"

    const-string/jumbo v2, "CITY"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setCity(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "ADDRESS"

    const-string/jumbo v2, "STREET"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setStreet(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v1, "ADDRESS"

    const-string/jumbo v2, "LONG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setLongtitude(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "ADDRESS"

    const-string/jumbo v2, "LAT"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setLatitude(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v1, "ADDRESS"

    const-string/jumbo v2, "POS"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setAddressName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthLogFlag()Z
    .locals 3

    .prologue
    .line 170
    const-string/jumbo v1, "LOGFLAG"

    const-string/jumbo v2, "UPLOAD_AUTH_LOG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallLogFlag()Z
    .locals 3

    .prologue
    .line 138
    const-string/jumbo v1, "LOGFLAG"

    const-string/jumbo v2, "UPLOAD_CALL_LOG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "MSC"

    const-string/jumbo v1, "IMEI"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "MSC"

    const-string/jumbo v1, "IMSI"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMscLogFlag()Z
    .locals 3

    .prologue
    .line 159
    const-string/jumbo v1, "LOGFLAG"

    const-string/jumbo v2, "UPLOAD_CONTACT_LOG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMscSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/util/TestHelper;->mCacheSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleLogFlag()Z
    .locals 3

    .prologue
    .line 193
    const-string/jumbo v1, "LOGFLAG"

    const-string/jumbo v2, "UPLOAD_SCHEDULE_LOG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmsLogFlag()Z
    .locals 3

    .prologue
    .line 148
    const-string/jumbo v1, "LOGFLAG"

    const-string/jumbo v2, "UPLOAD_SMS_LOG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatLogFlag()Z
    .locals 3

    .prologue
    .line 182
    const-string/jumbo v1, "STAT"

    const-string/jumbo v2, "STAT_LOG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "MSC"

    const-string/jumbo v1, "URL"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVadLogFlag()Z
    .locals 3

    .prologue
    .line 84
    const-string/jumbo v1, "VAD"

    const-string/jumbo v2, "VAD_LOG"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/util/TestHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    .line 88
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendPlayBeginBroadcast(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playMode"    # I

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.PLAYBEGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "playMode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public sendPlayInterruptBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.PLAYINTERRUPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method public sendPluginInstallBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.PLUGININSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public sendPluginUninstallBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.PLUGINUNINSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method public setMscSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/util/TestHelper;->mCacheSessionId:Ljava/lang/String;

    .line 255
    :cond_0
    return-void
.end method
