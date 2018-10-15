.class Lagh$6;
.super Ljava/lang/Object;
.source "WebPageDownloadManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagh;->j(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic c:Lagh;


# direct methods
.method constructor <init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lagh;

    .prologue
    .line 449
    iput-object p1, p0, Lagh$6;->c:Lagh;

    iput-object p2, p0, Lagh$6;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    iput-object p3, p0, Lagh$6;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 453
    const-string/jumbo v0, "WebPageDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traffic dialog cancel| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lagh$6;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lagh$6;->c:Lagh;

    iget-object v1, p0, Lagh$6;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 455
    invoke-virtual {v1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a()I

    move-result v1

    iget-object v2, p0, Lagh$6;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 456
    invoke-virtual {v2}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lagh$6;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 457
    invoke-virtual {v3}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lagh$6;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 458
    invoke-virtual {v4}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x68

    .line 454
    invoke-static/range {v0 .. v5}, Lagh;->a(Lagh;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 461
    iget-object v0, p0, Lagh$6;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 462
    return-void
.end method
