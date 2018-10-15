.class public Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;
.super Ljava/lang/Object;
.source "ProcessStubBindingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$a;
    }
.end annotation


# static fields
.field private static final PROCESS_TOTAL_NUM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ProcessStubBindingManager"

.field private static mInstance:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;


# instance fields
.field private mHasLoadedOk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHostContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mProcessStubBindingMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lrx;",
            "Lrw;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-direct {v0}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;-><init>()V

    sput-object v0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mInstance:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mHasLoadedOk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mLock:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)Ljava/util/TreeMap;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mHasLoadedOk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->onProcessDied(I)V

    return-void
.end method

.method private clearProcessStubBinding(Lrx;)V
    .locals 4
    .param p1, "processItem"    # Lrx;

    .prologue
    .line 339
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearProcessStubBinding begin, old processItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-nez p1, :cond_0

    .line 341
    const-string/jumbo v1, "ProcessStubBindingManager"

    const-string/jumbo v2, "clearProcessStubBinding fail, old processItem is null"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrw;

    .line 346
    .local v0, "componentsStubBinding":Lrw;
    invoke-virtual {v0}, Lrw;->c()V

    .line 348
    invoke-virtual {p1}, Lrx;->e()V

    .line 349
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearProcessStubBinding end, new processItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearProcessStubBindingMap(Ljava/util/Map;)V
    .locals 4
    .param p1, "runningInfoMap"    # Ljava/util/Map;

    .prologue
    .line 325
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearProcessStubBindingMap begin, mProcessStubBindingMap size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,runningInfoMap size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    .line 327
    .local v0, "processItem":Lrx;
    invoke-virtual {v0}, Lrx;->a()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lrx;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->clearProcessStubBinding(Lrx;)V

    goto :goto_0

    .line 332
    .end local v0    # "processItem":Lrx;
    :cond_1
    const-string/jumbo v1, "ProcessStubBindingManager"

    const-string/jumbo v2, "clearProcessStubBindingMap end"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private doGc(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 4
    .param p1, "myInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    .line 354
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doGc kill process, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :try_start_0
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "ProcessStubBindingManager"

    const-string/jumbo v2, "doGc error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getComponentsStubBindingByPluginProcessName(Landroid/content/pm/ComponentInfo;)Lrw;
    .locals 8
    .param p1, "pluginComponentInfo"    # Landroid/content/pm/ComponentInfo;

    .prologue
    const/4 v0, 0x0

    .line 176
    const-string/jumbo v5, "ProcessStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getComponentsStubBindingByPluginProcessName being, pluginComponentInfo is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 182
    .local v3, "pluginProcessName":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 183
    .local v2, "pluginPackName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 184
    .local v1, "idlePrcessItem":Lrx;
    iget-object v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx;

    .line 185
    .local v4, "processItem":Lrx;
    invoke-virtual {v4}, Lrx;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    if-nez v1, :cond_1

    .line 187
    move-object v1, v4

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {v4}, Lrx;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    move-object v1, v4

    .line 193
    iget-object v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v5, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrw;

    .line 194
    .local v0, "componentsStubBinding":Lrw;
    const-string/jumbo v5, "ProcessStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getComponentsStubBindingByPluginProcessName end, \u5df2\u7ecf\u7ed1\u5b9a\u8fc7:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,componentsStubBinding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "componentsStubBinding":Lrw;
    .end local v4    # "processItem":Lrx;
    :cond_3
    if-eqz v1, :cond_4

    .line 202
    invoke-virtual {v1, v3}, Lrx;->b(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Lrx;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v5, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrw;

    .line 207
    .restart local v0    # "componentsStubBinding":Lrw;
    const-string/jumbo v5, "ProcessStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getComponentsStubBindingByPluginProcessName end, \u6dfb\u52a0\u7ed1\u5b9a:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,componentsStubBinding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "componentsStubBinding":Lrw;
    :cond_4
    const-string/jumbo v5, "ProcessStubBindingManager"

    const-string/jumbo v6, "getComponentsStubBindingByPluginProcessName end, not found idle processItem"

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getComponentsStubBindingByStubProcessName(Ljava/lang/String;)Lrw;
    .locals 5
    .param p1, "stubProcessName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 217
    const-string/jumbo v2, "ProcessStubBindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getComponentsStubBindingByStubProcessName being, stubProcessName is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 231
    :goto_0
    return-object v0

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrw;

    .line 223
    .local v0, "componentsStubBinding":Lrw;
    invoke-virtual {v0}, Lrw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getComponentsStubBindingByStubProcessName end, componentsStubBinding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    .end local v0    # "componentsStubBinding":Lrw;
    :cond_2
    const-string/jumbo v2, "ProcessStubBindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getComponentsStubBindingByStubProcessName end, not found ComponentsStubBindingManager match stubProcessName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 231
    goto :goto_0
.end method

.method public static getInstance()Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mInstance:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    return-object v0
.end method

.method private getProcessItemByPid(I)Lrx;
    .locals 5
    .param p1, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .line 393
    const-string/jumbo v2, "ProcessStubBindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProcessItemByPid begin, pid is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 395
    :cond_0
    const-string/jumbo v2, "ProcessStubBindingManager"

    const-string/jumbo v3, "getProcessItemByPid fail, mProcessStubBindingMap is null"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 404
    :goto_0
    return-object v0

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    .line 400
    .local v0, "processItem":Lrx;
    invoke-virtual {v0}, Lrx;->a()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .end local v0    # "processItem":Lrx;
    :cond_3
    move-object v0, v1

    .line 404
    goto :goto_0
.end method

.method private getProcessItemByProcessName(Ljava/lang/String;)Lrx;
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 408
    const-string/jumbo v2, "ProcessStubBindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProcessItemByProcessName begin, processName is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    const-string/jumbo v2, "ProcessStubBindingManager"

    const-string/jumbo v3, "getProcessItemByProcessName fail, processName is null"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 427
    :goto_0
    return-object v0

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 414
    :cond_1
    const-string/jumbo v2, "ProcessStubBindingManager"

    const-string/jumbo v3, "getProcessItemByProcessName fail, mProcessStubBindingMap is null"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 415
    goto :goto_0

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    .line 419
    .local v0, "processItem":Lrx;
    invoke-virtual {v0}, Lrx;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 420
    const-string/jumbo v3, "ProcessStubBindingManager"

    const-string/jumbo v4, "getProcessItemByProcessName fail, processItem stubProcessName is null, may be init error"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :cond_4
    invoke-virtual {v0}, Lrx;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .end local v0    # "processItem":Lrx;
    :cond_5
    move-object v0, v1

    .line 427
    goto :goto_0
.end method

.method private onProcessDied(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 379
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProcessDied begin, pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getProcessItemByPid(I)Lrx;

    move-result-object v0

    .line 384
    .local v0, "processItem":Lrx;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->stopPluginServiceInProcess(Lrx;)V

    .line 387
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->clearProcessStubBinding(Lrx;)V

    .line 389
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProcessDied end, pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private runProcessGC()V
    .locals 11

    .prologue
    .line 265
    :try_start_0
    const-string/jumbo v7, "ProcessStubBindingManager"

    const-string/jumbo v8, "runProcessGC begin"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v7, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mHostContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 267
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 268
    .local v6, "runningInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v6, :cond_1

    .line 319
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v6    # "runningInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 271
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v6    # "runningInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 272
    .local v5, "runningInfoMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 273
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 316
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "runningInfoMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ProcessStubBindingManager"

    const-string/jumbo v8, "runProcessGC error"

    invoke-static {v7, v8, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v5    # "runningInfoMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "runningInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    :try_start_1
    invoke-direct {p0, v5}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->clearProcessStubBindingMap(Ljava/util/Map;)V

    .line 280
    iget-object v7, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx;

    .line 281
    .local v4, "processItem":Lrx;
    invoke-virtual {v4}, Lrx;->a()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 285
    invoke-virtual {v4}, Lrx;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 286
    .local v3, "pluginProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v3, :cond_3

    .line 290
    const-string/jumbo v8, "ProcessStubBindingManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "check process pid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lrx;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", importance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_5

    .line 293
    invoke-direct {p0, v3}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->doGc(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 314
    :cond_4
    :goto_3
    const-string/jumbo v8, "ProcessStubBindingManager"

    const-string/jumbo v9, "runProcessGC end"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 294
    :cond_5
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x1f4

    if-ne v8, v9, :cond_6

    .line 296
    invoke-direct {p0, v3}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->doGc(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    goto :goto_3

    .line 297
    :cond_6
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x190

    if-eq v8, v9, :cond_4

    .line 300
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x12c

    if-eq v8, v9, :cond_4

    .line 302
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_4

    .line 304
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x96

    if-eq v8, v9, :cond_4

    .line 306
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x82

    if-eq v8, v9, :cond_4

    .line 308
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x7d

    if-eq v8, v9, :cond_4

    .line 310
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v9, 0x64

    if-ne v8, v9, :cond_4

    goto :goto_3
.end method

.method private stopPluginServiceInProcess(Lrx;)V
    .locals 10
    .param p1, "processItem"    # Lrx;

    .prologue
    .line 458
    const-string/jumbo v7, "ProcessStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stopPluginServiceInProcess begin, processItem:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v7, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v7, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrw;

    .line 463
    .local v0, "componentsStubBindingManager":Lrw;
    if-nez v0, :cond_0

    .line 464
    const-string/jumbo v7, "ProcessStubBindingManager"

    const-string/jumbo v8, "stopPluginServiceInProcess end, componentsStubBindingManager is null"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {v0}, Lrw;->d()Ljava/util/TreeMap;

    move-result-object v5

    .line 470
    .local v5, "serviceMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 471
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 472
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 473
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 474
    .local v4, "pluginComponentName":Landroid/content/ComponentName;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 475
    .local v6, "stubServiceName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 476
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v7, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 479
    const-string/jumbo v7, "ProcessStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stopPluginService:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", intent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 483
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pluginComponentName":Landroid/content/ComponentName;
    .end local v6    # "stubServiceName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "ProcessStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stopPluginServiceInProcess end, processItem:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindStubActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "pluginActivityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->runProcessGC()V

    .line 111
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getComponentsStubBindingByPluginProcessName(Landroid/content/pm/ComponentInfo;)Lrw;

    move-result-object v0

    .line 112
    .local v0, "componentsStubBinding":Lrw;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lrw;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bindStubReceiver(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "pluginReceiverInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->runProcessGC()V

    .line 237
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getComponentsStubBindingByPluginProcessName(Landroid/content/pm/ComponentInfo;)Lrw;

    move-result-object v0

    .line 238
    .local v0, "componentsStubBinding":Lrw;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lrw;->a()Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bindStubService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->runProcessGC()V

    .line 144
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getComponentsStubBindingByPluginProcessName(Landroid/content/pm/ComponentInfo;)Lrw;

    move-result-object v0

    .line 145
    .local v0, "componentsStubBinding":Lrw;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lrw;->a(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 148
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBindingPluginServiceComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "stubServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 152
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 153
    .local v1, "stubProcessName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getComponentsStubBindingByStubProcessName(Ljava/lang/String;)Lrw;

    move-result-object v0

    .line 154
    .local v0, "componentsStubBinding":Lrw;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Lrw;->b(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    .line 157
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBindingStubActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "pluginActivityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getComponentsStubBindingByPluginProcessName(Landroid/content/pm/ComponentInfo;)Lrw;

    move-result-object v0

    .line 120
    .local v0, "componentsStubBinding":Lrw;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lrw;->b(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageNamesByPid(I)Ljava/util/List;
    .locals 2
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getProcessItemByPid(I)Lrx;

    move-result-object v0

    .line 440
    .local v0, "processItem":Lrx;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lrx;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 443
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProcessNameByPid(I)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getProcessItemByPid(I)Lrx;

    move-result-object v0

    .line 432
    .local v0, "processItem":Lrx;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lrx;->c()Ljava/lang/String;

    move-result-object v1

    .line 435
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 10
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string/jumbo v5, "ProcessStubBindingManager"

    const-string/jumbo v6, "ProcessStubBindingManager init begin"

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "beginTime":J
    iput-object p1, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mHostContext:Landroid/content/Context;

    .line 64
    new-instance v5, Ljava/util/TreeMap;

    new-instance v6, Lry;

    invoke-direct {v6}, Lry;-><init>()V

    invoke-direct {v5, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    .line 67
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v5, 0x8

    if-gt v3, v5, :cond_1

    .line 68
    move v4, v3

    .line 69
    .local v4, "index":I
    iget-object v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mHasLoadedOk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    new-instance v5, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;

    invoke-direct {v5, p0, p1, v4}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;-><init>(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;Landroid/content/Context;I)V

    .line 91
    invoke-virtual {v5}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->start()V

    .line 93
    iget-object v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mHasLoadedOk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    iget-object v6, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 96
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_1
    :try_start_1
    monitor-exit v6

    .line 67
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "ProcessStubBindingManager"

    const-string/jumbo v7, "init error"

    invoke-static {v5, v7, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 100
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 104
    .end local v4    # "index":I
    :cond_1
    new-instance v5, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$a;-><init>(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;)V

    iput-object v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    .line 105
    const-string/jumbo v5, "ProcessStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ProcessStubBindingManager init end, cost time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public registerApplicationCallback(IILjava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;)Z
    .locals 4
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;

    .prologue
    .line 363
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerApplicationCallback begin, callingPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,callingUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, p3}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getProcessItemByProcessName(Ljava/lang/String;)Lrx;

    move-result-object v0

    .line 366
    .local v0, "processItem":Lrx;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Lrx;->a(I)V

    .line 368
    invoke-virtual {v0, p2}, Lrx;->b(I)V

    .line 370
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerApplicationCallback end, processItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1

    .line 375
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopPluginService(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 447
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPluginService begin, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->mProcessStubBindingMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    .line 449
    .local v0, "processItem":Lrx;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrx;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lrx;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->stopPluginServiceInProcess(Lrx;)V

    goto :goto_0

    .line 454
    .end local v0    # "processItem":Lrx;
    :cond_1
    const-string/jumbo v1, "ProcessStubBindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPluginService end, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public unBindStubActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "pluginActivityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getComponentsStubBindingByPluginProcessName(Landroid/content/pm/ComponentInfo;)Lrw;

    move-result-object v0

    .line 128
    .local v0, "componentsStubBinding":Lrw;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lrw;->c(Landroid/content/pm/ActivityInfo;)V

    .line 139
    :cond_0
    return-void
.end method

.method public unBindStubService(Landroid/content/pm/ServiceInfo;)V
    .locals 1
    .param p1, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getComponentsStubBindingByPluginProcessName(Landroid/content/pm/ComponentInfo;)Lrw;

    move-result-object v0

    .line 162
    .local v0, "componentsStubBinding":Lrw;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Lrw;->c(Landroid/content/pm/ServiceInfo;)V

    .line 173
    :cond_0
    return-void
.end method
