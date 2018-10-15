.class Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$4;
.super Ljava/lang/Object;
.source "RecommendLxDialog.java"

# interfaces
.implements Lcom/iflytek/framework/ui/share/IShareResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$4;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 533
    const-string/jumbo v0, "RecommendLxDialog"

    const-string/jumbo v1, "onSuccess  "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-nez p1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder$4;->this$0:Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;->access$1200(Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v0

    const-string/jumbo v1, "SHARE_LINK"

    invoke-virtual {v0, v1}, Lalq;->a(Ljava/lang/String;)V

    .line 537
    :cond_0
    return-void
.end method
