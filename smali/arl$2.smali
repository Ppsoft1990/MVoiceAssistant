.class Larl$2;
.super Ljava/lang/Object;
.source "PluginControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic c:Larl;


# direct methods
.method constructor <init>(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 77
    iput-object p1, p0, Larl$2;->c:Larl;

    iput-object p2, p0, Larl$2;->a:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    iput-object p3, p0, Larl$2;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    const-string/jumbo v0, "PluginControllerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traf confirm| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Larl$2;->a:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Larl$2;->c:Larl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Larl;->a(Larl;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 83
    iget-object v0, p0, Larl$2;->c:Larl;

    iget-object v1, p0, Larl$2;->a:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    invoke-static {v0, v1}, Larl;->a(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 85
    iget-object v0, p0, Larl$2;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 86
    return-void
.end method
