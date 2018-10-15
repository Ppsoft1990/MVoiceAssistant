.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$7;
.super Ljava/lang/Object;
.source "ResUpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Z)V
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
    .line 415
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$7;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$7;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->i(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->dismiss()V

    .line 420
    return-void
.end method
