.class Lagh$7;
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
    .line 465
    iput-object p1, p0, Lagh$7;->c:Lagh;

    iput-object p2, p0, Lagh$7;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    iput-object p3, p0, Lagh$7;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 469
    const-string/jumbo v2, "WebPageDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "traf confirm| "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lagh$7;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 471
    .local v0, "currentClickTime":J
    iget-object v2, p0, Lagh$7;->c:Lagh;

    invoke-static {v2}, Lagh;->b(Lagh;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 477
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v2, p0, Lagh$7;->c:Lagh;

    invoke-static {v2, v0, v1}, Lagh;->a(Lagh;J)J

    .line 475
    iget-object v2, p0, Lagh$7;->c:Lagh;

    iget-object v3, p0, Lagh$7;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-static {v2, v3}, Lagh;->b(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    .line 476
    iget-object v2, p0, Lagh$7;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    goto :goto_0
.end method
