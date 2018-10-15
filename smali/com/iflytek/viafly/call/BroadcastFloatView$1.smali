.class Lcom/iflytek/viafly/call/BroadcastFloatView$1;
.super Ljava/lang/Object;
.source "BroadcastFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/call/BroadcastFloatView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/call/BroadcastFloatView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/BroadcastFloatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/BroadcastFloatView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView$1;->a:Lcom/iflytek/viafly/call/BroadcastFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView$1;->a:Lcom/iflytek/viafly/call/BroadcastFloatView;

    invoke-static {v0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->a(Lcom/iflytek/viafly/call/BroadcastFloatView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView$1;->a:Lcom/iflytek/viafly/call/BroadcastFloatView;

    invoke-static {v0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->b(Lcom/iflytek/viafly/call/BroadcastFloatView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView$1;->a:Lcom/iflytek/viafly/call/BroadcastFloatView;

    invoke-static {v0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->c(Lcom/iflytek/viafly/call/BroadcastFloatView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView$1;->a:Lcom/iflytek/viafly/call/BroadcastFloatView;

    invoke-static {v0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->c(Lcom/iflytek/viafly/call/BroadcastFloatView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView$1;->a:Lcom/iflytek/viafly/call/BroadcastFloatView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 68
    :cond_0
    return-void
.end method
