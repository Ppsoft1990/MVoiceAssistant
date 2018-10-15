.class public Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;
.super Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;
.source "CallLogCollecter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;
    }
.end annotation


# static fields
.field private static instance:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;


# instance fields
.field private final CALL_APPS:[Ljava/lang/String;

.field private CALL_PERMISSIONS:[Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCallLogObserver:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;

    invoke-direct {v0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;-><init>()V

    sput-object v0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->instance:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;-><init>()V

    .line 26
    const-string/jumbo v0, "CallLogCollecter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->mCallLogObserver:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.snda.youni"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.qihoo360.contacts"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.tencent.qqphonebook"

    aput-object v1, v0, v5

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

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->CALL_APPS:[Ljava/lang/String;

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->CALL_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->instance:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;

    return-object v0
.end method

.method private isNeedOpenCollecter()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->isOpenCallCollector()Z

    move-result v0

    return v0
.end method

.method private registerCallLogObserver(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string/jumbo v1, "CallLogCollecter"

    const-string/jumbo v2, "registerCallLogObserver"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->mCallLogObserver:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->initHandler()V

    .line 76
    new-instance v1, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;-><init>(Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->mCallLogObserver:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->mCallLogObserver:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    invoke-static {p1}, Lcom/iflytek/common/adaptation/logcollect/CallLogUtils;->queryInCallCount(Landroid/content/Context;)I

    move-result v0

    .line 81
    .local v0, "realCOunt":I
    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->resetCount(I)V

    .line 83
    .end local v0    # "realCOunt":I
    :cond_0
    return-void
.end method

.method private scanCallApps(Landroid/content/Context;)Ljava/util/List;
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
    .line 163
    invoke-static {p1}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v6

    invoke-virtual {v6}, Lgq;->b()Ljava/util/List;

    move-result-object v2

    .line 165
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/app/AppItem;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 187
    :goto_0
    return-object v3

    .line 169
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 170
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

    .line 171
    .local v0, "app":Lcom/iflytek/base/app/AppItem;
    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    .end local v0    # "app":Lcom/iflytek/base/app/AppItem;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v3, "callApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->CALL_APPS:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    aget-object v0, v7, v6

    .line 176
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 177
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 181
    .end local v0    # "app":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    .local v4, "excludeApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {p1}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->CALL_PERMISSIONS:[Ljava/lang/String;

    .line 185
    invoke-virtual {v6, p1, v7, v4}, Lgq;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 186
    .local v5, "otherApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private unRegisterCallLogObserver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-string/jumbo v0, "CallLogCollecter"

    const-string/jumbo v1, "unRegisterCallLogObserver"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->mCallLogObserver:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->mCallLogObserver:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->mCallLogObserver:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;

    goto :goto_0
.end method


# virtual methods
.method public addReadCount()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->isNeedOpenCollecter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "CallLogCollecter"

    const-string/jumbo v1, "addReadCount | log collecter is closed --> return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->addReadCount()V

    goto :goto_0
.end method

.method protected closeListener()V
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "CallLogCollecter"

    const-string/jumbo v1, "closeListener"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->closeCallCollector()V

    .line 138
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->stop(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method protected getDelaytime()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method protected getReadCount()I
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getReadCallCount()I

    move-result v0

    return v0
.end method

.method protected getRealCount(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-static {p1}, Lcom/iflytek/common/adaptation/logcollect/CallLogUtils;->queryInCallCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getUnReadCount()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getUnReadCallCount()I

    move-result v0

    return v0
.end method

.method protected isOpenRead()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->context:Landroid/content/Context;

    invoke-static {v1}, Lzu;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    invoke-static {}, Lagm;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string/jumbo v0, "CallLogCollecter"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->start(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->isNeedOpenCollecter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "CallLogCollecter"

    const-string/jumbo v1, "start | open call Log collecter"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->registerCallLogObserver(Landroid/content/Context;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string/jumbo v0, "CallLogCollecter"

    const-string/jumbo v1, "start | no need open return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string/jumbo v0, "CallLogCollecter"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->stop(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->unRegisterCallLogObserver(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method protected updateReadCount()V
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->getReadCount()I

    move-result v0

    .line 115
    .local v0, "inCallCount":I
    add-int/lit8 v0, v0, 0x1

    .line 116
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setReadCallCount(I)V

    .line 117
    const-string/jumbo v1, "CallLogCollecter"

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

    .line 118
    return-void
.end method

.method protected updateUnReadCount()V
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->getUnReadCount()I

    move-result v0

    .line 126
    .local v0, "unReadCallCount":I
    add-int/lit8 v0, v0, 0x1

    .line 127
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->setUnReadCallCount(I)V

    .line 128
    const-string/jumbo v1, "CallLogCollecter"

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

    .line 130
    return-void
.end method

.method protected uploadLog(Landroid/content/Context;ZII)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bRead"    # Z
    .param p3, "readCount"    # I
    .param p4, "unreadCount"    # I

    .prologue
    .line 150
    const-string/jumbo v1, "CallLogCollecter"

    const-string/jumbo v3, "uploadLog"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->scanCallApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getCallBroadCastCount()I

    move-result v4

    .line 155
    .local v4, "bcCount":I
    const/4 v5, 0x0

    .line 156
    .local v5, "dbChangeCount":I
    new-instance v0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;

    const-string/jumbo v1, "call"

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;-><init>(Ljava/lang/String;Ljava/util/List;ZIIII)V

    .line 158
    .local v0, "req":Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;
    const-string/jumbo v1, "CallLogCollecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calllogCollecter uploadLog "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-super {p0, p1, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->uploadLog(Landroid/content/Context;Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;)V

    .line 160
    return-void
.end method
