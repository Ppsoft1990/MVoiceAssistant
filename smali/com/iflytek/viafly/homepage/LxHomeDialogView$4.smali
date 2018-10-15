.class Lcom/iflytek/viafly/homepage/LxHomeDialogView$4;
.super Ljava/lang/Object;
.source "LxHomeDialogView.java"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/LxHomeDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$4;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$4;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Lcom/iflytek/viafly/homepage/LxHomeDialogView;Z)Z

    .line 343
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$4;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Lcom/iflytek/viafly/homepage/LxHomeDialogView;Z)Z

    .line 349
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 336
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->a()V

    .line 337
    return-void
.end method
