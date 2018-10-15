.class final Lcom/iflytek/framework/plugin/internal/PluginUpdater;
.super Ljava/lang/Object;
.source "PluginUpdater.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginUpdater"


# instance fields
.field private mAdapter:Lvt;

.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {}, Lvt;->b()Lvt;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater;->mAdapter:Lvt;

    .line 33
    return-void
.end method


# virtual methods
.method protected updatePluginRes([Ljava/lang/Integer;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V
    .locals 5
    .param p1, "pluginTypes"    # [Ljava/lang/Integer;
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "clientIds":[Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 43
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 45
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater;->mAdapter:Lvt;

    const/16 v3, 0xc

    new-instance v4, Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;

    invoke-direct {v4, p0, p2}, Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;-><init>(Lcom/iflytek/framework/plugin/internal/PluginUpdater;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V

    invoke-virtual {v2, v0, v3, v4}, Lvt;->a([Ljava/lang/String;ILvt$a;)V

    .line 82
    return-void
.end method
