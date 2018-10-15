.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;
.super Ljava/lang/Object;
.source "ResUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;->b:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    iput p2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;->b:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->i(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;->a:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->showErrorUI(I)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 447
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;->b:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->i(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9$1;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 454
    return-void
.end method
