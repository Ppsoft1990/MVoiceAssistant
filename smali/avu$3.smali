.class Lavu$3;
.super Ljava/lang/Object;
.source "SpeechAddScheduleGuideManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavu;
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
    .line 144
    iput-object p1, p0, Lavu$3;->a:Lavu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lavu$3;->a:Lavu;

    invoke-static {v0}, Lavu;->c(Lavu;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavu$3;->a:Lavu;

    invoke-static {v0}, Lavu;->c(Lavu;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lavu$3;->a:Lavu;

    invoke-static {v0}, Lavu;->c(Lavu;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 149
    iget-object v0, p0, Lavu$3;->a:Lavu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lavu;->a(Lavu;Z)Z

    .line 151
    :cond_0
    return-void
.end method
