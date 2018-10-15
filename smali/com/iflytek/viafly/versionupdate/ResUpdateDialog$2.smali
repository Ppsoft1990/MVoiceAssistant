.class Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;
.super Ljava/lang/Object;
.source "ResUpdateDialog.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;->c:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    iput p2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;->a:I

    iput-object p3, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 519
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;->c:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 520
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 3
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
    .line 514
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;->c:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    iget v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;->a:I

    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;ILjava/lang/String;)V

    .line 515
    return-void
.end method
