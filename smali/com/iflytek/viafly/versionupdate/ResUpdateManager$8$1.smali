.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8$1;
.super Ljava/lang/Object;
.source "ResUpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;

    iget-object v0, v0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;->b:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->i(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->dismiss()V

    .line 435
    return-void
.end method
