.class Lavu$1;
.super Ljava/lang/Object;
.source "SpeechAddScheduleGuideManager.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavu;->a(Lqr;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lavu;


# direct methods
.method constructor <init>(Lavu;)V
    .locals 0
    .param p1, "this$0"    # Lavu;

    .prologue
    .line 127
    iput-object p1, p0, Lavu$1;->a:Lavu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lavu$1;->a:Lavu;

    invoke-static {v0}, Lavu;->b(Lavu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lavu$1;->a:Lavu;

    invoke-static {v1}, Lavu;->a(Lavu;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lavu$1;->a:Lavu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lavu;->a(Lavu;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 133
    return-void
.end method
