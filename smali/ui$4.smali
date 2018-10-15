.class Lui$4;
.super Ljava/lang/Object;
.source "AppInstallController.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui;->b(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

.field final synthetic b:Lui;


# direct methods
.method constructor <init>(Lui;Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lui;

    .prologue
    .line 278
    iput-object p1, p0, Lui$4;->b:Lui;

    iput-object p2, p0, Lui$4;->a:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtnClick(I)V
    .locals 1
    .param p1, "btnId"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lui$4;->a:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->getToast()Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lui$4;->a:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->getToast()Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast;->dismiss()V

    .line 283
    iget-object v0, p0, Lui$4;->b:Lui;

    invoke-static {v0}, Lui;->a(Lui;)V

    .line 285
    :cond_0
    return-void
.end method
