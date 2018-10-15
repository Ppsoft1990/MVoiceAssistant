.class Lagh$9;
.super Ljava/lang/Object;
.source "WebPageDownloadManager.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagh;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

.field final synthetic b:Lagh;


# direct methods
.method constructor <init>(Lagh;Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lagh;

    .prologue
    .line 514
    iput-object p1, p0, Lagh$9;->b:Lagh;

    iput-object p2, p0, Lagh$9;->a:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtnClick(I)V
    .locals 1
    .param p1, "btnId"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lagh$9;->a:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->getToast()Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lagh$9;->a:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->getToast()Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast;->dismiss()V

    .line 519
    iget-object v0, p0, Lagh$9;->b:Lagh;

    invoke-static {v0}, Lagh;->c(Lagh;)V

    .line 521
    :cond_0
    return-void
.end method
