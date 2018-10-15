.class public final Lcom/iflytek/base/skin/ThemeManagerCache;
.super Ljava/lang/Object;
.source "ThemeManagerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/ThemeManagerCache$InstanceHolder;
    }
.end annotation


# static fields
.field public static final PLUGIN_ID_MAIN:Ljava/lang/String; = "main"


# instance fields
.field private themeManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/skin/IThemeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/ThemeManagerCache;->themeManagers:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/skin/ThemeManagerCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/skin/ThemeManagerCache$1;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/iflytek/base/skin/ThemeManagerCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/iflytek/base/skin/ThemeManagerCache;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/iflytek/base/skin/ThemeManagerCache$InstanceHolder;->instance:Lcom/iflytek/base/skin/ThemeManagerCache;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/iflytek/base/skin/IThemeManager;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string/jumbo p1, "main"

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeManagerCache;->themeManagers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/IThemeManager;

    .line 37
    .local v0, "themeManager":Lcom/iflytek/base/skin/IThemeManager;
    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lcom/iflytek/base/skin/ThemeManagerImpl;

    .end local v0    # "themeManager":Lcom/iflytek/base/skin/IThemeManager;
    invoke-direct {v0}, Lcom/iflytek/base/skin/ThemeManagerImpl;-><init>()V

    .line 39
    .restart local v0    # "themeManager":Lcom/iflytek/base/skin/IThemeManager;
    iget-object v1, p0, Lcom/iflytek/base/skin/ThemeManagerCache;->themeManagers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    monitor-exit p0

    return-object v0

    .line 32
    .end local v0    # "themeManager":Lcom/iflytek/base/skin/IThemeManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
