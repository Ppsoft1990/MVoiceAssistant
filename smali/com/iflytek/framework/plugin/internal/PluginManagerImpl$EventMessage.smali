.class Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventMessage"
.end annotation


# instance fields
.field callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

.field errorCode:I

.field event:I

.field pluginId:Ljava/lang/String;

.field pluginKind:Ljava/lang/String;

.field pluginType:I

.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)V
    .locals 0

    .prologue
    .line 1805
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p2, "x1"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;

    .prologue
    .line 1805
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)V

    return-void
.end method
