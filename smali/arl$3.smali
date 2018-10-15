.class Larl$3;
.super Ljava/lang/Object;
.source "PluginControllerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larl;->a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

.field final synthetic b:Larl;


# direct methods
.method constructor <init>(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 89
    iput-object p1, p0, Larl$3;->b:Larl;

    iput-object p2, p0, Larl$3;->a:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 92
    const-string/jumbo v0, "PluginControllerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traf cancel| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Larl$3;->a:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Larl$3;->b:Larl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Larl;->a(Larl;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 94
    iget-object v0, p0, Larl$3;->b:Larl;

    invoke-static {v0}, Larl;->a(Larl;)Larl$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Larl$3;->b:Larl;

    invoke-static {v0}, Larl;->a(Larl;)Larl$a;

    move-result-object v0

    iget-object v1, p0, Larl$3;->a:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .line 96
    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v1

    .line 95
    invoke-interface {v0, v1}, Larl$a;->a(I)V

    .line 98
    :cond_0
    return-void
.end method
