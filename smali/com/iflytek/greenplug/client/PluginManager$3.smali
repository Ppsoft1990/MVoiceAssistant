.class Lcom/iflytek/greenplug/client/PluginManager$3;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/PluginManager;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/PluginManager;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/iflytek/greenplug/client/PluginManager$3;->a:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager$3;->a:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v0}, Lcom/iflytek/greenplug/client/PluginManager;->access$000(Lcom/iflytek/greenplug/client/PluginManager;)V

    .line 274
    return-void
.end method
