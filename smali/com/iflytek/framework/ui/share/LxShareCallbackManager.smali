.class public Lcom/iflytek/framework/ui/share/LxShareCallbackManager;
.super Ljava/lang/Object;
.source "LxShareCallbackManager.java"


# static fields
.field private static mInstance:Lcom/iflytek/framework/ui/share/LxShareCallbackManager;


# instance fields
.field protected mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/ui/share/LxShareCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    .line 17
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method protected static getInstance()Lcom/iflytek/framework/ui/share/LxShareCallbackManager;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mInstance:Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mInstance:Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;-><init>()V

    sput-object v0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mInstance:Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mInstance:Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected addShareResultListener(Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V
    .locals 3
    .param p1, "build"    # Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .param p2, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareCallback;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareCallback;-><init>()V

    .line 36
    .local v0, "callback":Lcom/iflytek/framework/ui/share/LxShareCallback;
    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareCallback;->mModule:Ljava/lang/String;

    .line 37
    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareCallback;->mTag:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lcom/iflytek/framework/ui/share/LxShareCallback;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    .line 39
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    .line 42
    :cond_2
    if-nez p2, :cond_3

    .line 43
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onEvent(Lcom/iflytek/framework/ui/share/ShareEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/iflytek/framework/ui/share/ShareEvent;

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/framework/ui/share/ShareEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/framework/ui/share/ShareEvent;->getTransaction()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "shareId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/framework/ui/share/ShareEvent;->getCode()I

    move-result v1

    .line 66
    .local v1, "code":I
    iget-object v4, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/ui/share/LxShareCallback;

    .line 67
    .local v0, "callback":Lcom/iflytek/framework/ui/share/LxShareCallback;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/iflytek/framework/ui/share/LxShareCallback;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, v0, Lcom/iflytek/framework/ui/share/LxShareCallback;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    iget-object v5, v0, Lcom/iflytek/framework/ui/share/LxShareCallback;->mModule:Ljava/lang/String;

    iget-object v6, v0, Lcom/iflytek/framework/ui/share/LxShareCallback;->mTag:Ljava/lang/String;

    invoke-interface {v4, v1, v5, v6, v3}, Lcom/iflytek/framework/ui/share/IShareResultListener;->onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->removeShareResultListener(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected removeShareResultListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
