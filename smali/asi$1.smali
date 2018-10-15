.class Lasi$1;
.super Ljava/lang/Object;
.source "EnterPluginHelper.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasi;->b(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

.field final synthetic c:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

.field final synthetic d:Lasc;

.field final synthetic e:Lasi;


# direct methods
.method constructor <init>(Lasi;ILcom/iflytek/viafly/ui/activity/BaseFragmentActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V
    .locals 0
    .param p1, "this$0"    # Lasi;

    .prologue
    .line 98
    iput-object p1, p0, Lasi$1;->e:Lasi;

    iput p2, p0, Lasi$1;->a:I

    iput-object p3, p0, Lasi$1;->b:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    iput-object p4, p0, Lasi$1;->c:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    iput-object p5, p0, Lasi$1;->d:Lasc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    .line 109
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lasi$1;->b:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 112
    iget-object v0, p0, Lasi$1;->e:Lasi;

    invoke-static {v0}, Lasi;->a(Lasi;)Lasi$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lasi$1;->e:Lasi;

    invoke-static {v0}, Lasi;->a(Lasi;)Lasi$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lasi$a;->onFail(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 6
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
    .line 101
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lasi$1;->e:Lasi;

    invoke-static {v0}, Lasi;->a(Lasi;)Lasi$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lasi$1;->e:Lasi;

    invoke-static {v0}, Lasi;->a(Lasi;)Lasi$a;

    move-result-object v0

    iget v1, p0, Lasi$1;->a:I

    invoke-virtual {v0, v1}, Lasi$a;->onStartInstallPlugin(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lasi$1;->e:Lasi;

    invoke-static {v0}, Lasi;->b(Lasi;)Lari;

    move-result-object v0

    iget v1, p0, Lasi$1;->a:I

    iget-object v2, p0, Lasi$1;->b:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    const/4 v3, 0x1

    iget-object v4, p0, Lasi$1;->c:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    iget-object v5, p0, Lasi$1;->d:Lasc;

    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 105
    return-void
.end method
