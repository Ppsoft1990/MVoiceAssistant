.class public Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;
.super Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;
.source "SmsLogCollecter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;
    }
.end annotation


# static fields
.field private static final SMS_APPS:[Ljava/lang/String;

.field private static instance:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;


# instance fields
.field private SMS_PERMISSIONS:[Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mSmsDbObserver:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;

    invoke-direct {v0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;-><init>()V

    sput-object v0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->instance:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.snda.youni"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.qihoo360.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.tencent.qqphonebook"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.nqmobile.antivirus20"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "project.rising"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.tencent.pb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.huawei.systemmanager"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->SMS_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;-><init>()V

    .line 25
    const-string/jumbo v0, "SmsLogCollecter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->mSmsDbObserver:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->SMS_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->instance:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;

    return-object v0
.end method

.method private isNeedOpenCollecter()Z
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->isOpenSmsCollector()Z

    move-result v0

    return v0
.end method

.method private registerSmsDbObserver(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string/jumbo v1, "SmsLogCollecter"

    const-string/jumbo v2, "registerSmsDbObserver"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->mSmsDbObserver:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->initHandler()V

    .line 81
    new-instance v1, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;-><init>(Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->mSmsDbObserver:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lib$b;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->mSmsDbObserver:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    invoke-static {p1}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->queryInBoxCount(Landroid/content/Context;)I

    move-result v0

    .line 86
    .local v0, "realCount":I
    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->resetCount(I)V

    .line 88
    .end local v0    # "realCount":I
    :cond_0
    return-void
.end method

.method private scanSmsApps(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p1}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v6

    invoke-virtual {v6}, Lgq;->b()Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/app/AppItem;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 214
    :goto_0
    return-object v5

    .line 196
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 197
    .local v1, "appSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/app/AppItem;

    .line 198
    .local v0, "app":Lcom/iflytek/base/app/AppItem;
    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    .end local v0    # "app":Lcom/iflytek/base/app/AppItem;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v5, "smsApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->SMS_APPS:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    aget-object v0, v7, v6

    .line 203
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 204
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 208
    .end local v0    # "app":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v3, "excludeApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {p1}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->SMS_PERMISSIONS:[Ljava/lang/String;

    .line 212
    invoke-virtual {v6, p1, v7, v3}, Lgq;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 213
    .local v4, "otherApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private unRegisterSmsDbObserver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string/jumbo v0, "SmsLogCollecter"

    const-string/jumbo v1, "unRegisterSmsDbObserver"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->mSmsDbObserver:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->mSmsDbObserver:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->mSmsDbObserver:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;

    goto :goto_0
.end method


# virtual methods
.method public addReadCount()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->isNeedOpenCollecter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v0, "SmsLogCollecter"

    const-string/jumbo v1, "addReadCount | log collecter is closed --> return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->context:Landroid/content/Context;

    invoke-static {v0}, Lhq;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v0, "SmsLogCollecter"

    const-string/jumbo v1, "addReadCount | sms read is closed --> return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_1
    invoke-super {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->addReadCount()V

    goto :goto_0
.end method

.method protected closeListener()V
    .locals 2

    .prologue
    .line 158
    const-string/jumbo v0, "SmsLogCollecter"

    const-string/jumbo v1, "closeListener"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->closeSmsCollector()V

    .line 160
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->stop(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method protected getReadCount()I
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getReadSmsCount()I

    move-result v0

    return v0
.end method

.method protected getRealCount(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    invoke-static {p1}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->queryInBoxCount(Landroid/content/Context;)I

    move-result v0

    .line 220
    .local v0, "realCount":I
    return v0
.end method

.method protected getUnReadCount()I
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getUnReadSmsCount()I

    move-result v0

    return v0
.end method

.method protected isOpenRead()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_CMCC_MAIL_READ_SWITCH"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string/jumbo v0, "SmsLogCollecter"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->start(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->isNeedOpenCollecter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v0, "SmsLogCollecter"

    const-string/jumbo v1, "start | open sms database collecter"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->registerSmsDbObserver(Landroid/content/Context;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string/jumbo v0, "SmsLogCollecter"

    const-string/jumbo v1, "start | no need open return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string/jumbo v0, "SmsLogCollecter"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->unRegisterSmsDbObserver(Landroid/content/Context;)V

    .line 58
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->stop(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method protected updateReadCount()V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->getReadCount()I

    move-result v0

    .line 136
    .local v0, "readSmsCount":I
    add-int/lit8 v0, v0, 0x1

    .line 137
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setReadSmsCount(I)V

    .line 138
    const-string/jumbo v1, "SmsLogCollecter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateReadCount | new readCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method protected updateUnReadCount()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->getUnReadCount()I

    move-result v0

    .line 148
    .local v0, "unReadSmsCount":I
    add-int/lit8 v0, v0, 0x1

    .line 149
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setUnReadSmsCount(I)V

    .line 150
    const-string/jumbo v1, "SmsLogCollecter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUnReadCount | new unReadCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method protected uploadLog(Landroid/content/Context;ZII)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bRead"    # Z
    .param p3, "readCount"    # I
    .param p4, "unreadCount"    # I

    .prologue
    .line 176
    const-string/jumbo v1, "SmsLogCollecter"

    const-string/jumbo v3, "uploadLog"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->scanSmsApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 179
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getSmsBroadCastCount()I

    move-result v4

    .line 181
    .local v4, "bcCount":I
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getSmsDBChangeReadCount()I

    move-result v5

    .line 183
    .local v5, "dbChangeCount":I
    new-instance v0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;

    const-string/jumbo v1, "sms"

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;-><init>(Ljava/lang/String;Ljava/util/List;ZIIII)V

    .line 185
    .local v0, "req":Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;
    const-string/jumbo v1, "SmsLogCollecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "smslogCollecter uploadLog "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->uploadLog(Landroid/content/Context;Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;)V

    .line 187
    return-void
.end method
