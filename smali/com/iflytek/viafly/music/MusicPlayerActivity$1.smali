.class Lcom/iflytek/viafly/music/MusicPlayerActivity$1;
.super Ljava/lang/Object;
.source "MusicPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/music/MusicPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/MusicPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$1;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 192
    if-eqz p3, :cond_0

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$1;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Loc;->a(II)V

    .line 195
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 188
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 185
    return-void
.end method
