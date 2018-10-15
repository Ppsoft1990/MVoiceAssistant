.class Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->loadApkPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

.field final synthetic val$callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

.field final synthetic val$info:Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;->val$info:Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    iput-object p3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;->val$callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)V
    .locals 4
    .param p1, "pluginData"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;->val$info:Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;->val$callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$600(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;ZLcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I

    .line 1162
    return-void
.end method
