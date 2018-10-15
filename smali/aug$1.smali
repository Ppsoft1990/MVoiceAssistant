.class Laug$1;
.super Ljava/lang/Object;
.source "RemindMmpComponents.java"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laug;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laug;


# direct methods
.method constructor <init>(Laug;)V
    .locals 0
    .param p1, "this$0"    # Laug;

    .prologue
    .line 89
    iput-object p1, p0, Laug$1;->a:Laug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 107
    iget-object v0, p0, Laug$1;->a:Laug;

    invoke-static {v0}, Laug;->a(Laug;)Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->stopAnimation()V

    .line 108
    iget-object v0, p0, Laug$1;->a:Laug;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laug;->a(Laug;Z)V

    .line 109
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 101
    iget-object v0, p0, Laug$1;->a:Laug;

    invoke-static {v0}, Laug;->a(Laug;)Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->stopAnimation()V

    .line 102
    iget-object v0, p0, Laug$1;->a:Laug;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laug;->a(Laug;Z)V

    .line 103
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 93
    iget-object v0, p0, Laug$1;->a:Laug;

    invoke-static {v0}, Laug;->a(Laug;)Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->startAnimation()V

    .line 94
    iget-object v0, p0, Laug$1;->a:Laug;

    invoke-static {v0}, Laug;->a(Laug;)Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsScheduleStop()V

    .line 96
    iget-object v0, p0, Laug$1;->a:Laug;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laug;->a(Laug;Z)V

    .line 97
    return-void
.end method
