.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9$1;
.super Ljava/lang/Object;
.source "ResUpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;

    iget-object v0, v0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;->b:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->i(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->dismiss()V

    .line 452
    return-void
.end method
