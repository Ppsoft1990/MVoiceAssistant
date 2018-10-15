.class public Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;
.super Ljava/lang/Object;
.source "PhoneCollecterSetting.java"


# static fields
.field public static final CALL_BROADCAST_COUNT:Ljava/lang/String; = "call_broadcast_count"

.field public static final CALL_DBCHANGE_COUNT:Ljava/lang/String; = "call_dbchange_count"

.field public static final FLYSETTING:Ljava/lang/String; = "phone_collecter_setting"

.field public static final READ_CALL_COUNT:Ljava/lang/String; = "read_call_count"

.field public static final READ_SMS_COUNT:Ljava/lang/String; = "read_sms_count"

.field public static final SMS_BROADCAST_COUNT:Ljava/lang/String; = "sms_broadcast_count"

.field public static final SMS_DBCHANGE_COUNT:Ljava/lang/String; = "sms_dbchange_count"

.field private static final TAG:Ljava/lang/String; = "PhoneCollecterSetting"

.field public static final UN_READ_CALL_COUNT:Ljava/lang/String; = "un_read_call_count"

.field public static final UN_READ_SMS_COUNT:Ljava/lang/String; = "un_read_sms_count"

.field private static volatile instance:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->instance:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mSharedPref:Landroid/content/SharedPreferences;

    .line 15
    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->instance:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->instance:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    invoke-direct {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;-><init>()V

    sput-object v0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->instance:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->instance:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 48
    move v1, p2

    .line 50
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "PhoneCollecterSetting"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getIntSettings(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 66
    :cond_1
    :goto_0
    return v0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    .local v0, "ret":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-direct {p0, p1, v1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private setSetting(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public addCallBroadcastCount()V
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->isOpenCallCollector()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const-string/jumbo v1, "PhoneCollecterSetting"

    const-string/jumbo v2, "addCallBroadcastCount | it has closed call log collector-->return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string/jumbo v1, "call_broadcast_count"

    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 216
    const-string/jumbo v1, "call_broadcast_count"

    invoke-direct {p0, v1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setSetting(Ljava/lang/String;I)V

    .line 217
    const-string/jumbo v1, "PhoneCollecterSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addCallBroadcastCount | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addSmsBroadcastCount()V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->isOpenSmsCollector()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const-string/jumbo v1, "PhoneCollecterSetting"

    const-string/jumbo v2, "addSmsBroadcastCount | it has closed sms log collector-->return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getSmsBroadCastCount()I

    move-result v0

    .line 188
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 189
    const-string/jumbo v1, "sms_broadcast_count"

    invoke-direct {p0, v1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setSetting(Ljava/lang/String;I)V

    .line 190
    const-string/jumbo v1, "PhoneCollecterSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addSmsBroadcastCount | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addSmsDBChangeReadCount()V
    .locals 4

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->isOpenSmsCollector()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const-string/jumbo v1, "PhoneCollecterSetting"

    const-string/jumbo v2, "addSmsDBChangeCount | it has closed sms log collector-->return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getSmsDBChangeReadCount()I

    move-result v0

    .line 203
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 204
    const-string/jumbo v1, "sms_dbchange_count"

    invoke-direct {p0, v1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setSetting(Ljava/lang/String;I)V

    .line 205
    const-string/jumbo v1, "PhoneCollecterSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addSmsDBChangeCount | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeCallCollector()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_PHONE_COLLECTER_CALL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public closeSmsCollector()V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_PHONE_COLLECTER_SMS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public getCallBroadCastCount()I
    .locals 1

    .prologue
    .line 229
    const-string/jumbo v0, "call_broadcast_count"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getReadCallCount()I
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "read_call_count"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getReadSmsCount()I
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "read_sms_count"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSmsBroadCastCount()I
    .locals 1

    .prologue
    .line 221
    const-string/jumbo v0, "sms_broadcast_count"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSmsDBChangeReadCount()I
    .locals 1

    .prologue
    .line 225
    const-string/jumbo v0, "sms_dbchange_count"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUnReadCallCount()I
    .locals 1

    .prologue
    .line 135
    const-string/jumbo v0, "un_read_call_count"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUnReadSmsCount()I
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "un_read_sms_count"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isOpenCallCollector()Z
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_PHONE_COLLECTER_CALL"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "open":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpenSmsCollector()Z
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_PHONE_COLLECTER_SMS"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "open":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone_collecter_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mSharedPref:Landroid/content/SharedPreferences;

    .line 44
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 45
    return-void
.end method

.method public setReadCallCount(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 127
    const-string/jumbo v0, "read_call_count"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setSetting(Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public setReadSmsCount(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 159
    const-string/jumbo v0, "read_sms_count"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setSetting(Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method public setUnReadCallCount(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 143
    const-string/jumbo v0, "un_read_call_count"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setSetting(Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public setUnReadSmsCount(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 175
    const-string/jumbo v0, "un_read_sms_count"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setSetting(Ljava/lang/String;I)V

    .line 176
    return-void
.end method
