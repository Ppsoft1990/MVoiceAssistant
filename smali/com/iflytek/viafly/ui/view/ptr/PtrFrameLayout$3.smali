.class Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$3;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$3;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 714
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$3;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$200(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Z)V

    .line 718
    return-void
.end method
