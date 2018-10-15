.class Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoticeObserver"
.end annotation


# instance fields
.field event:I

.field plugin:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)V
    .locals 0

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p2, "x1"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;

    .prologue
    .line 1837
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)V

    return-void
.end method
