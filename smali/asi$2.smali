.class Lasi$2;
.super Ljava/lang/Object;
.source "EnterPluginHelper.java"

# interfaces
.implements Lpf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

.field final synthetic c:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

.field final synthetic d:Lasi;


# direct methods
.method constructor <init>(Lasi;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lasi;

    .prologue
    .line 140
    iput-object p1, p0, Lasi$2;->d:Lasi;

    iput p2, p0, Lasi$2;->a:I

    iput-object p3, p0, Lasi$2;->b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    iput-object p4, p0, Lasi$2;->c:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lasi$2;->c:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 155
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    iget v1, p0, Lasi$2;->a:I

    invoke-interface {v0, v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->enterPlugin(I)I

    .line 145
    iget-object v0, p0, Lasi$2;->d:Lasi;

    invoke-static {v0}, Lasi;->c(Lasi;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v0

    iget v1, p0, Lasi$2;->a:I

    iget-object v2, p0, Lasi$2;->b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-virtual {v0, v1, v2}, Lxk;->a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 147
    iget-object v0, p0, Lasi$2;->d:Lasi;

    invoke-static {v0}, Lasi;->a(Lasi;)Lasi$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lasi$2;->d:Lasi;

    invoke-static {v0}, Lasi;->a(Lasi;)Lasi$a;

    move-result-object v0

    iget v1, p0, Lasi$2;->a:I

    invoke-virtual {v0, v1}, Lasi$a;->onEnterPlugin(I)V

    .line 150
    :cond_0
    return-void
.end method
