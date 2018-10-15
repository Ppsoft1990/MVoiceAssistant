.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$2;
.super Ljava/lang/Object;
.source "ResUpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$2;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$2;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->j(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->DOWNLOAD_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$2;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->l(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    .line 485
    :cond_0
    return-void
.end method
