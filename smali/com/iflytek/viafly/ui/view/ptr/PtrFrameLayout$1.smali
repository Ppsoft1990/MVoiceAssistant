.class Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$1;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
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
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$1;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$1;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$000(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 91
    return-void
.end method
